#!/usr/bin/env python3
"""
PLATEAU CityGML → OBJ 変換ツール

使い方:
  python plateu-converter.py -lod 1 -b 53390329 53390338 -i <gmlフォルダ> -o <出力先>

出力:
  メッシュ番号ごとに 1 つの OBJ ファイルを生成する。
  ファイル内では建物ごとに "o 建物ID" で区切られている。

座標系:
  緯度経度をメートル単位に変換して出力する（等距離円筒図法）。
    X = 東方向（経度 → m）
    Y = 北方向（緯度 → m）
    Z = 高さ（m、元データのまま）
  同じ変換式を使う限り、異なる地区のデータも正しく重なる。
"""

import argparse
import datetime
import math
import os
import re
import sys
import xml.etree.ElementTree as ET

# CityGML 名前空間
NS = {
    'core': 'http://www.opengis.net/citygml/2.0',
    'bldg': 'http://www.opengis.net/citygml/building/2.0',
    'tran': 'http://www.opengis.net/citygml/transportation/2.0',
    'luse': 'http://www.opengis.net/citygml/landuse/2.0',
    'veg':  'http://www.opengis.net/citygml/vegetation/2.0',
    'frn':  'http://www.opengis.net/citygml/cityfurniture/2.0',
    'brid': 'http://www.opengis.net/citygml/bridge/2.0',
    'wtr':  'http://www.opengis.net/citygml/waterbody/2.0',
    'urf':  'https://www.geospatial.jp/iur/urf/3.1',
    'uro':  'https://www.geospatial.jp/iur/uro/3.1',
    'gml':  'http://www.opengis.net/gml',
}

# タイプ別設定
# ns_prefix : GML 名前空間プレフィックス（フォルダ名と異なる場合に指定）
# root_tags : GML 内のルート要素タグ名（リスト）
# lod1_tag  : LOD1 ジオメトリを持つタグ名
# lod2_tag  : LOD2 ジオメトリを持つタグ名（None の場合は lod1 で代替）
TYPE_CONFIG = {
    'bldg': {
        'root_tags': ['Building'],
        'lod1_tag':  'lod1Solid',         # Solid 形式（専用パーサー使用）
        'lod2_tag':  'boundedBy',          # boundedBy 形式（専用パーサー使用）
    },
    'tran': {
        'root_tags': ['Road', 'Railway', 'Track', 'Square'],
        'lod1_tag':  'lod1MultiSurface',
        'lod2_tag':  'lod2MultiSurface',
    },
    'luse': {
        'root_tags': ['LandUse'],
        'lod1_tag':  'lod1MultiSurface',
        'lod2_tag':  None,
    },
    'veg': {
        'root_tags': ['PlantCover', 'SolitaryVegetationObject'],
        'lod1_tag':  'lod1MultiSurface',
        'lod2_tag':  'lod2MultiSurface',
    },
    'frn': {
        'root_tags': ['CityFurniture'],
        'lod1_tag':  'lod1Geometry',
        'lod2_tag':  None,
    },
    'brid': {
        'root_tags': ['Bridge'],
        'lod1_tag':  'lod2MultiSurface',   # LOD1 データなし、LOD2 で代替
        'lod2_tag':  'lod2MultiSurface',
    },
    # fld / htd / tnm は WaterBody 名前空間を使用（フォルダ名と異なる）
    'fld': {
        'ns_prefix': 'wtr',
        'root_tags': ['WaterBody'],
        'lod1_tag':  'lod1MultiSurface',
        'lod2_tag':  None,
    },
    'htd': {
        'ns_prefix': 'wtr',
        'root_tags': ['WaterBody'],
        'lod1_tag':  'lod1MultiSurface',
        'lod2_tag':  None,
    },
    'tnm': {
        'ns_prefix': 'wtr',
        'root_tags': ['WaterBody'],
        'lod1_tag':  'lod1MultiSurface',
        'lod2_tag':  None,
    },
    # lsld / urf は URF 拡張名前空間を使用
    'lsld': {
        'ns_prefix': 'urf',
        'root_tags': ['SedimentDisasterProneArea'],
        'lod1_tag':  'lod1MultiSurface',
        'lod2_tag':  None,
    },
    'urf': {
        'ns_prefix': 'urf',
        'root_tags': ['AreaClassification', 'FirePreventionDistrict',
                      'HeightControlDistrict', 'UseDistrict'],
        'lod1_tag':  'lod1MultiSurface',
        'lod2_tag':  None,
    },
    # ubld は URO 拡張名前空間、ジオメトリは bldg:lod1Solid（専用パーサー使用）
    'ubld': {
        'ns_prefix': 'uro',
        'root_tags': ['UndergroundBuilding'],
        'lod1_tag':  'lod1Solid',
        'lod2_tag':  None,
    },
}

# 緯度経度 → メートル変換係数（等距離円筒図法）
# 基準緯度を日本中心付近 (35°) に設定
_REF_LAT_RAD = math.radians(35.0)
_M_PER_DEG_LAT = 111320.0                            # 緯度 1° あたりの距離 (m)
_M_PER_DEG_LON = 111320.0 * math.cos(_REF_LAT_RAD)  # 経度 1° あたりの距離 (m)


def latlon_to_m(lat, lon, height):
    """
    緯度経度 + 標高をメートル座標に変換する。
    X = 東方向, Y = 北方向, Z = 高さ (Rhino の Z-up に合わせる)
    """
    x = lon * _M_PER_DEG_LON
    y = lat * _M_PER_DEG_LAT
    z = height
    return (x, y, z)

# ---------------------------------------------------------------
# 座標パース
# ---------------------------------------------------------------

def parse_pos_list(text):
    """
    gml:posList のテキストを頂点リストに変換する。
    PLATEAU の座標順: 緯度 経度 高さ(m)
    """
    vals = list(map(float, text.strip().split()))
    pts = []
    for i in range(0, len(vals) - 2, 3):
        lat, lon, z = vals[i], vals[i + 1], vals[i + 2]
        pts.append(latlon_to_m(lat, lon, z))
    return pts


def ring_to_pts(polygon_el):
    """gml:Polygon 要素から頂点リストを返す（閉じた最後の点は除去）"""
    pos_el = polygon_el.find('.//gml:posList', NS)
    if pos_el is None or not pos_el.text:
        return []
    pts = parse_pos_list(pos_el.text)
    # 閉じたリング（先頭 == 末尾）なら末尾を除去
    if len(pts) > 1 and pts[0] == pts[-1]:
        pts = pts[:-1]
    return pts

# ---------------------------------------------------------------
# LOD ごとのポリゴン取得
# ---------------------------------------------------------------

def get_polygons_lod1(building):
    """bldg:lod1Solid 以下のポリゴンをすべて取得する（bldg 専用）"""
    polys = []
    lod1 = building.find('bldg:lod1Solid', NS)
    if lod1 is None:
        return polys
    for poly in lod1.findall('.//gml:Polygon', NS):
        pts = ring_to_pts(poly)
        if len(pts) >= 3:
            polys.append(pts)
    return polys


def get_polygons_lod2(building):
    """bldg:boundedBy 以下の lod2MultiSurface からポリゴンを取得する（bldg 専用）"""
    polys = []
    for bounded in building.findall('bldg:boundedBy', NS):
        for ms in bounded.findall('.//bldg:lod2MultiSurface', NS):
            for poly in ms.findall('.//gml:Polygon', NS):
                pts = ring_to_pts(poly)
                if len(pts) >= 3:
                    polys.append(pts)
    return polys


def get_polygons_generic(element, ns_prefix, lod_tag):
    """
    tran / luse / veg / frn 用の汎用ポリゴン取得。
    <ns_prefix:lod_tag> 以下の gml:Polygon をすべて取り出す。
    """
    polys = []
    tag = f'{ns_prefix}:{lod_tag}'
    for lod_el in element.findall(f'.//{tag}', NS):
        for poly in lod_el.findall('.//gml:Polygon', NS):
            pts = ring_to_pts(poly)
            if len(pts) >= 3:
                polys.append(pts)
    return polys

# ---------------------------------------------------------------
# GML ファイルから建物データを取得
# ---------------------------------------------------------------

def parse_gml(gml_path, lod, obj_type='bldg'):
    """
    GML ファイルをパースし、オブジェクトごとの (obj_id, polygons) リストを返す。
    obj_type に応じて TYPE_CONFIG を参照し、適切なタグからポリゴンを取得する。
    戻り値: (objects, skipped_lod_count)
      objects = [(obj_id, polys), ...]
    """
    try:
        tree = ET.parse(gml_path)
    except ET.ParseError as e:
        print(f'  [ERROR] XML 解析失敗: {gml_path}\n         {e}')
        return [], 0

    root = tree.getroot()
    config = TYPE_CONFIG.get(obj_type)
    if config is None:
        print(f'  [ERROR] 未対応のタイプ: {obj_type}')
        return [], 0

    result = []
    skipped_lod = 0
    ns_prefix = config.get('ns_prefix', obj_type)

    for root_tag in config['root_tags']:
        for element in root.findall(f'.//{ns_prefix}:{root_tag}', NS):
            obj_id = element.get('{http://www.opengis.net/gml}id', 'unknown')

            if obj_type in ('bldg', 'ubld'):
                # bldg / ubld は専用パーサー（bldg:lod1Solid / bldg:boundedBy を使用）
                if lod == 2:
                    polys = get_polygons_lod2(element)
                    if not polys:
                        polys = get_polygons_lod1(element)
                        skipped_lod += 1
                else:
                    polys = get_polygons_lod1(element)
            else:
                # その他は汎用パーサー
                lod2_tag = config['lod2_tag']
                lod1_tag = config['lod1_tag']
                if lod == 2 and lod2_tag:
                    polys = get_polygons_generic(element, ns_prefix, lod2_tag)
                    if not polys:
                        polys = get_polygons_generic(element, ns_prefix, lod1_tag)
                        skipped_lod += 1
                else:
                    polys = get_polygons_generic(element, ns_prefix, lod1_tag)

            if polys:
                result.append((obj_id, polys))

    return result, skipped_lod


# ---------------------------------------------------------------
# OBJ ファイルに書き出す
# ---------------------------------------------------------------

def write_obj_file(out_path, mesh_buildings, lod, label, obj_type):
    """
    mesh_buildings = [(mesh_code, [(bldg_id, polys), ...]), ...]
    を 1 つの OBJ ファイルに書き出す。
    各建物は "o 建物ID" で区切る（Rhino で Explode 可能）。
    書き出した総建物数を返す。
    """
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    total = 0
    vertex_offset = 1  # OBJ の頂点インデックスはファイル全体で通し番号

    with open(out_path, 'w', encoding='utf-8') as f:
        f.write(f'# PLATEAU CityGML → OBJ  {label}  LOD{lod}\n')
        f.write(f'# 座標系: 等距離円筒図法 (基準緯度 35°)  単位: m\n')
        f.write(f'#   X = 東 (経度方向)  Y = 北 (緯度方向)  Z = 高さ\n\n')
        f.write(f'g {obj_type}\n\n')

        for mesh_code, buildings in mesh_buildings:
            f.write(f'# --- mesh: {mesh_code} ---\n\n')
            for bldg_id, polys in buildings:
                f.write(f'o {bldg_id}\n')

                all_verts = [v for poly in polys for v in poly]
                for v in all_verts:
                    f.write(f'v {v[0]:.3f} {v[1]:.3f} {v[2]:.3f}\n')

                idx = vertex_offset
                for poly in polys:
                    face_idx = list(range(idx, idx + len(poly)))
                    f.write('f ' + ' '.join(map(str, face_idx)) + '\n')
                    idx += len(poly)

                f.write('\n')
                vertex_offset += len(all_verts)
                total += 1

    return total

# ---------------------------------------------------------------
# メッシュ番号一覧表示
# ---------------------------------------------------------------

def list_meshes(input_dir):
    """入力フォルダにある GML ファイルのメッシュ番号を一覧表示する"""
    gml_files = sorted(f for f in os.listdir(input_dir) if f.endswith('.gml'))
    if not gml_files:
        print('GML ファイルが見つかりません。')
        return
    print(f'利用可能なメッシュ番号 ({len(gml_files)} 件):')
    for f in gml_files:
        mesh = f.split('_')[0]
        print(f'  {mesh}  ({f})')

# タイプの日本語説明
TYPE_DESCRIPTIONS = {
    'bldg': '建物',
    'brid': '橋梁',
    'tran': '交通（道路・鉄道）',
    'luse': '土地利用',
    'veg':  '植生',
    'frn':  '都市設備',
    'fld':  '洪水浸水想定区域',
    'htd':  '高潮浸水想定区域',
    'tnm':  '津波浸水想定区域',
    'lsld': '土砂災害危険区域',
    'urf':  '都市計画区域等',
    'ubld': '地下建物',
}


def find_udx_dir(input_base):
    """入力フォルダから udx/ ディレクトリを探す（なければ input_base 自身を返す）"""
    udx = os.path.join(input_base, 'udx')
    if os.path.isdir(udx):
        return udx
    return input_base


def interactive_mode():
    """引数なしで起動したときの一問一答入力モード"""
    print('=' * 44)
    print('  PLATEAU CityGML → OBJ')
    print('　変換ツールを開始します。')
    print('=' * 44)

    args = argparse.Namespace()

    # ── 1. 入力フォルダ (-i) ──────────────────────────
    print('【入力フォルダ (-i)】')
    print('  データセットのルートフォルダを指定します。')
    print('  例: ../resources/input/13209_machida-shi_pref_2023_citygml_2_op')
    while True:
        val = input('  入力フォルダ: ').strip().strip('"').strip("'")
        if val and os.path.isdir(val):
            args.input = val
            break
        print('  ※ フォルダが見つかりません。再入力してください。')

    # ── 2. LOD レベル (-lod) ─────────────────────────
    print('\n【LOD レベル (-lod)】')
    print('  1: ボックス形状（全データに存在、処理が速い）')
    print('  2: 屋根形状あり（整備状況はデータによって異なる）')
    while True:
        val = input('  LOD [1/2] (既定: 1): ').strip()
        if val == '' or val == '1':
            args.lod = 1
            break
        elif val == '2':
            args.lod = 2
            break
        print('  ※ 1 か 2 を入力してください。')

    # ── 3. ブロック番号 (-b) ─────────────────────────
    udx_dir = find_udx_dir(args.input)

    # 検証用にブロック番号を収集（表示はしない）
    available_blocks = set()
    if os.path.isdir(udx_dir):
        for type_name in os.listdir(udx_dir):
            type_path = os.path.join(udx_dir, type_name)
            if os.path.isdir(type_path):
                for f in os.listdir(type_path):
                    if f.endswith('.gml'):
                        available_blocks.add(f.split('_')[0])

    print('\n【ブロック番号 (-b)】')
    print('  変換対象のブロック番号を入力します（1つ以上必須）。')
    print('  複数変換する場合はスペース区切りで入力します。')
    print('  ※ ブロック番号はデータセットフォルダ内の GML ファイル名の先頭数字です。')
    while True:
        val = input('  ブロック番号: ').strip()
        if not val:
            print('  ※ ブロック番号を1つ以上入力してください。')
            continue
        entered = val.split()
        if available_blocks:
            invalid = [b for b in entered if b not in available_blocks]
            if invalid:
                print(f'  ※ 以下のブロック番号は存在しません: {" ".join(invalid)}')
                continue
        args.meshes = entered
        break

    # ── 4. オブジェクト種別 (-t) ──────────────────────
    # udx 以下で GML ファイルが存在し TYPE_CONFIG に登録されているタイプを列挙
    available_types = []
    if os.path.isdir(udx_dir):
        for type_name in sorted(os.listdir(udx_dir)):
            type_path = os.path.join(udx_dir, type_name)
            if (os.path.isdir(type_path)
                    and type_name in TYPE_CONFIG
                    and any(f.endswith('.gml') for f in os.listdir(type_path))):
                available_types.append(type_name)

    print('\n【オブジェクト種別 (-t)】')
    print('  変換するオブジェクト種別を入力します（1つ以上必須）。')
    print('  複数変換する場合はスペース区切りで入力します。')
    if available_types:
        print('  選択可能な種別:')
        for t in available_types:
            desc = TYPE_DESCRIPTIONS.get(t, '')
            print(f'    {t:<6}  {desc}')
    while True:
        val = input('  種別: ').strip()
        if not val:
            print('  ※ 種別を1つ以上入力してください。')
            continue
        entered = val.split()
        if available_types:
            invalid = [t for t in entered if t not in available_types]
            if invalid:
                print(f'  ※ 以下の種別はこのデータセットに存在しません: {" ".join(invalid)}')
                continue
        args.types = entered
        break

    # ── 5. 出力フォルダ名 (-o) ────────────────────────
    print('\n【出力フォルダ名 (-o)】')
    print('  resources/output/ 内に作成するサブフォルダ名を指定します。')
    print('  省略すると日時フォルダ（yyyymmdd-hhmmss）が自動生成されます。')
    print('  例: machida-station')
    val = input('  出力フォルダ名 (既定: 日時自動): ').strip()
    args.output = val if val else None

    print()
    return args


# ---------------------------------------------------------------
# エントリポイント
# ---------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description='PLATEAU CityGML を OBJ に変換する',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
例:
  # LOD1 で 2 ブロックだけ変換
  python plateu-converter.py -lod 1 -b 53390329 53390338 -i ../resources/input/14100.../

  # LOD2 で全ブロック変換
  python plateu-converter.py -lod 2 -i ../resources/input/14100.../
""")

    parser.add_argument('-lod', type=int, choices=[1, 2], default=1,
                        help='LOD レベル (デフォルト: 1)')
    parser.add_argument('-b', nargs='+', metavar='BLOCK', dest='meshes',
                        help='変換するブロック番号（複数指定可）。省略時は全ブロック。')
    parser.add_argument('-i', metavar='DIR', dest='input', required=True,
                        help='データセットのルートフォルダ（udx/<type> まで自動で探索）')
    parser.add_argument('-o', metavar='NAME', dest='output', default=None,
                        help='出力サブフォルダ名 (例: -o yokohama → resources/output/yokohama/)')
    parser.add_argument('-t', nargs='+', metavar='TYPE', dest='types', default=['bldg'],
                        help='オブジェクト種別（複数指定可、デフォルト: bldg）  例: bldg brid tran luse veg frn fld htd tnm lsld urf ubld')

    if len(sys.argv) == 1:
        args = interactive_mode()
    else:
        args = parser.parse_args()

    # 出力先フォルダを決定（-o 省略時は日時フォルダを自動生成）
    base_output = os.path.join(os.path.dirname(__file__), '..', 'resources', 'output')
    if not args.output:
        args.output = datetime.datetime.now().strftime('%Y%m%d-%H%M%S')
    output_dir = os.path.join(base_output, args.output)
    os.makedirs(output_dir, exist_ok=True)

    # タイプごとに処理
    output_paths = []
    for obj_type in args.types:

        # udx/<type> を探索（-i がルート・udx・udx/type どれでも対応）
        base = args.input
        candidates = [
            base,                                      # -i が udx/type 直指定
            os.path.join(base, obj_type),              # -i が udx/
            os.path.join(base, 'udx', obj_type),       # -i がデータセットルート
        ]
        input_dir = None
        for candidate in candidates:
            if os.path.isdir(candidate) and any(f.endswith('.gml') for f in os.listdir(candidate)):
                input_dir = candidate
                break
        if input_dir is None:
            print(f'[SKIP] {obj_type}: データフォルダが見つかりません')
            continue

        all_gml = sorted(f for f in os.listdir(input_dir) if f.endswith('.gml'))

        if args.meshes:
            target = [f for f in all_gml if any(f.startswith(m) for m in args.meshes)]
            not_found = [m for m in args.meshes if not any(f.startswith(m) for f in all_gml)]
        else:
            target = all_gml
            not_found = []

        unit = '棟' if obj_type == 'bldg' else '件'

        print(f'\n======= {obj_type} / LOD{args.lod} / {len(target)} ブロック =======')

        if not_found:
            print(f'  [WARNING] 見つからないブロック番号: {not_found}')
        if not target:
            print(f'  [SKIP] 変換対象のファイルがありません')
            print(f'========================================')
            continue

        # ブロックごとにデータを取得
        mesh_buildings = []
        for gml_file in target:
            mesh_code = gml_file.split('_')[0]
            gml_path  = os.path.join(input_dir, gml_file)
            buildings, skipped = parse_gml(gml_path, args.lod, obj_type)
            extra = f' (内 LOD1 で代替: {skipped} {unit})' if skipped else ''
            print(f'  {gml_file}: {len(buildings)} {unit}{extra}')
            mesh_buildings.append((mesh_code, buildings, skipped))

        total_count = sum(len(b) for _, b, _ in mesh_buildings)
        if total_count == 0:
            print(f'  [SKIP] 変換できるデータが 0 件のため出力しません')
            print(f'========================================')
            continue

        # 出力ファイル名: {-o}_{LOD}_{type}_{ブロック番号...}.obj
        mesh_codes = [mc for mc, _, _ in mesh_buildings]
        prefix = f'{args.output}_' if args.output else ''
        out_name = f'{prefix}LOD{args.lod}_{obj_type}_{"_".join(mesh_codes)}.obj'
        out_path = os.path.join(output_dir, out_name)
        label = ' + '.join(mesh_codes)

        total = write_obj_file(out_path, [(mc, b) for mc, b, _ in mesh_buildings], args.lod, label, obj_type)
        output_paths.append(out_path)

        total_skipped = sum(s for _, _, s in mesh_buildings)
        total_lod2 = total - total_skipped if args.lod == 2 else 0

        print(f'  総数     : {total} {unit}')
        if args.lod == 2:
            print(f'  LOD2     : {total_lod2} {unit}')
            print(f'  LOD1代替 : {total_skipped} {unit}（LOD2データなし）')
        print(f'========================================')

    if output_paths:
        print()
        print(f'  出力先   : {output_dir}')
        print()
        print(f'　変換が完了しました。')
        print()
        print()
        print()


if __name__ == '__main__':
    main()
