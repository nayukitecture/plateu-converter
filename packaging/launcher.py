"""
plateu-converter.exe の起動ラッパー。

PyInstaller でビルドする際のエントリーポイント。
plateu-converter.py の __file__ を「exeと同じフォルダ/main-program/plateu-converter.py」に
偽装して実行することで、resources/input・resources/output が exe の隣に作られるようにする。
"""
import os
import sys

# PyInstaller静的解析用: plateu-converter.py が使用するモジュールを明示的にインポート
import argparse
import colorsys
import datetime
import math
import xml.etree.ElementTree

# exe の実際の場所（frozen 時は sys.executable、開発時はこのファイルの場所）
if getattr(sys, 'frozen', False):
    exe_dir = os.path.dirname(sys.executable)
    script_path = os.path.join(sys._MEIPASS, 'plateu-converter.py')
else:
    exe_dir = os.path.dirname(os.path.abspath(__file__))
    script_path = os.path.join(exe_dir, 'plateu-converter.py')

# __file__ を「exe_dir/main-program/plateu-converter.py」に偽装する。
# plateu-converter.py 内では os.path.dirname(__file__) + '/../resources/...' と
# パスを組み立てているため、main-program/ を一段挟むことで
# exe_dir/resources/input・output が作成先になる。
fake_file = os.path.join(exe_dir, 'main-program', 'plateu-converter.py')

# resources/README.md を初回のみ作成
resources_dir = os.path.join(exe_dir, 'resources')
readme_path = os.path.join(resources_dir, 'README.md')
if not os.path.exists(readme_path):
    os.makedirs(resources_dir, exist_ok=True)
    with open(readme_path, 'w', encoding='utf-8') as f:
        f.write("""\
# plateu-converter リソースフォルダ

## input/
PLATEAUからダウンロードして解凍したデータを配置してください。
フォルダごとそのまま移動するだけで、次回起動時に候補として表示されます。

```
input/
└── 13100_tokyo23-ku_2022_citygml_op/   ← 解凍したフォルダをそのまま置く
```

## output/
変換後の OBJ ファイルが自動的に保存されます。
実行ごとにサブフォルダ（日時 or 指定名）が作成されます。
""")

with open(script_path, 'r', encoding='utf-8') as f:
    code = f.read()

globs = {
    '__file__': fake_file,
    '__name__': '__main__',
    '__spec__': None,
    '__doc__': None,
    '__package__': None,
    '__loader__': None,
    '__builtins__': __builtins__,
}
try:
    exec(compile(code, fake_file, 'exec'), globs)
except Exception:
    import traceback
    traceback.print_exc()
finally:
    input('\nEnter を押すと終了します...')
