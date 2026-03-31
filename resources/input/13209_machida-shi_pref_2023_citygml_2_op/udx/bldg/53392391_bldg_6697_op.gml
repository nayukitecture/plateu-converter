<?xml version='1.0' encoding='utf-8'?>
<core:CityModel xmlns:bldg="http://www.opengis.net/citygml/building/2.0" xmlns:core="http://www.opengis.net/citygml/2.0" xmlns:gen="http://www.opengis.net/citygml/generics/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:uro="https://www.geospatial.jp/iur/uro/3.1" xmlns:xAL="urn:oasis:names:tc:ciq:xsdschema:xAL:2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="https://www.geospatial.jp/iur/uro/3.1 ../../schemas/iur/uro/3.1/urbanObject.xsd https://www.geospatial.jp/iur/urf/3.1 ../../schemas/iur/urf/3.1/urbanFunction.xsd http://www.opengis.net/citygml/2.0 http://schemas.opengis.net/citygml/2.0/cityGMLBase.xsd http://www.opengis.net/citygml/landuse/2.0 http://schemas.opengis.net/citygml/landuse/2.0/landUse.xsd http://www.opengis.net/citygml/building/2.0 http://schemas.opengis.net/citygml/building/2.0/building.xsd http://www.opengis.net/citygml/transportation/2.0 http://schemas.opengis.net/citygml/transportation/2.0/transportation.xsd http://www.opengis.net/citygml/generics/2.0 http://schemas.opengis.net/citygml/generics/2.0/generics.xsd http://www.opengis.net/citygml/relief/2.0 http://schemas.opengis.net/citygml/relief/2.0/relief.xsd http://www.opengis.net/citygml/cityobjectgroup/2.0 http://schemas.opengis.net/citygml/cityobjectgroup/2.0/cityObjectGroup.xsd http://www.opengis.net/gml http://schemas.opengis.net/gml/3.1.1/base/gml.xsd http://www.opengis.net/citygml/appearance/2.0 http://schemas.opengis.net/citygml/appearance/2.0/appearance.xsd">
<gml:boundedBy>
<gml:Envelope srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/6697">
<gml:lowerCorner>35.58291345366375 139.3998643210492 0</gml:lowerCorner>
<gml:upperCorner>35.58319604023203 139.400017964571 111.5209</gml:upperCorner>
</gml:Envelope>
</gml:boundedBy>
<core:cityObjectMember>
<bldg:Building gml:id="bldg_9fa05f08-08e2-456a-aeaa-651638408ad3">
<core:creationDate>2024-03-15</core:creationDate>
<gen:stringAttribute name="延べ面積換算係数"><gen:value>0.9</gen:value></gen:stringAttribute><gen:stringAttribute name="大字・町コード"><gen:value>20</gen:value></gen:stringAttribute><gen:stringAttribute name="13+区市町村コード+大字・町コード+町・丁目コード"><gen:value>13209020000</gen:value></gen:stringAttribute><bldg:class codeSpace="../../codelists/Building_class.xml">3001</bldg:class>
<bldg:usage codeSpace="../../codelists/Building_usage.xml">411</bldg:usage>
<bldg:measuredHeight uom="m">6.8</bldg:measuredHeight>
<bldg:storeysAboveGround>2</bldg:storeysAboveGround>
<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
<bldg:lod0RoofEdge>
<gml:MultiSurface srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/6697">
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58298203102059 139.39991037073284 0 35.58295424285247 139.39992828543714 0 35.58294933503608 139.399917057057 0 35.58291345366375 139.39994031174447 0 35.58293245078839 139.39998434594438 0 35.58294225300837 139.39997800367445 0 35.58295952285747 139.400017964571 0 35.5829923467586 139.39999671252295 0 35.58299916408528 139.4000125649694 0 35.5830202071346 139.39999887960025 0 35.58298203102059 139.39991037073284 0</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
</gml:MultiSurface>
</bldg:lod0RoofEdge>
<bldg:lod1Solid>
<gml:Solid srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/6697">
<gml:exterior>
<gml:CompositeSurface>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58298203102059 139.39991037073284 104.3423 35.5830202071346 139.39999887960025 104.3423 35.58299916408528 139.4000125649694 104.3423 35.5829923467586 139.39999671252295 104.3423 35.58295952285747 139.400017964571 104.3423 35.58294225300837 139.39997800367445 104.3423 35.58293245078839 139.39998434594438 104.3423 35.58291345366375 139.39994031174447 104.3423 35.58294933503608 139.399917057057 104.3423 35.58295424285247 139.39992828543714 104.3423 35.58298203102059 139.39991037073284 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58298203102059 139.39991037073284 104.3423 35.58295424285247 139.39992828543714 104.3423 35.58295424285247 139.39992828543714 110.0423 35.58298203102059 139.39991037073284 110.0423 35.58298203102059 139.39991037073284 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58295424285247 139.39992828543714 104.3423 35.58294933503608 139.399917057057 104.3423 35.58294933503608 139.399917057057 110.0423 35.58295424285247 139.39992828543714 110.0423 35.58295424285247 139.39992828543714 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58294933503608 139.399917057057 104.3423 35.58291345366375 139.39994031174447 104.3423 35.58291345366375 139.39994031174447 110.0423 35.58294933503608 139.399917057057 110.0423 35.58294933503608 139.399917057057 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58291345366375 139.39994031174447 104.3423 35.58293245078839 139.39998434594438 104.3423 35.58293245078839 139.39998434594438 110.0423 35.58291345366375 139.39994031174447 110.0423 35.58291345366375 139.39994031174447 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58293245078839 139.39998434594438 104.3423 35.58294225300837 139.39997800367445 104.3423 35.58294225300837 139.39997800367445 110.0423 35.58293245078839 139.39998434594438 110.0423 35.58293245078839 139.39998434594438 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58294225300837 139.39997800367445 104.3423 35.58295952285747 139.400017964571 104.3423 35.58295952285747 139.400017964571 110.0423 35.58294225300837 139.39997800367445 110.0423 35.58294225300837 139.39997800367445 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58295952285747 139.400017964571 104.3423 35.5829923467586 139.39999671252295 104.3423 35.5829923467586 139.39999671252295 110.0423 35.58295952285747 139.400017964571 110.0423 35.58295952285747 139.400017964571 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.5829923467586 139.39999671252295 104.3423 35.58299916408528 139.4000125649694 104.3423 35.58299916408528 139.4000125649694 110.0423 35.5829923467586 139.39999671252295 110.0423 35.5829923467586 139.39999671252295 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58299916408528 139.4000125649694 104.3423 35.5830202071346 139.39999887960025 104.3423 35.5830202071346 139.39999887960025 110.0423 35.58299916408528 139.4000125649694 110.0423 35.58299916408528 139.4000125649694 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.5830202071346 139.39999887960025 104.3423 35.58298203102059 139.39991037073284 104.3423 35.58298203102059 139.39991037073284 110.0423 35.5830202071346 139.39999887960025 110.0423 35.5830202071346 139.39999887960025 104.3423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58298203102059 139.39991037073284 110.0423 35.58295424285247 139.39992828543714 110.0423 35.58294933503608 139.399917057057 110.0423 35.58291345366375 139.39994031174447 110.0423 35.58293245078839 139.39998434594438 110.0423 35.58294225300837 139.39997800367445 110.0423 35.58295952285747 139.400017964571 110.0423 35.5829923467586 139.39999671252295 110.0423 35.58299916408528 139.4000125649694 110.0423 35.5830202071346 139.39999887960025 110.0423 35.58298203102059 139.39991037073284 110.0423</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
</gml:CompositeSurface>
</gml:exterior>
</gml:Solid>
</bldg:lod1Solid>
<bldg:address><core:Address><core:xalAddress><xAL:AddressDetails><xAL:Country><xAL:CountryName>日本</xAL:CountryName><xAL:Locality><xAL:LocalityName Type="Town">東京都町田市常盤町</xAL:LocalityName></xAL:Locality></xAL:Country></xAL:AddressDetails></core:xalAddress></core:Address></bldg:address>
<uro:buildingDetailAttribute>
<uro:BuildingDetailAttribute>
<uro:buildingRoofEdgeArea uom="m2">64.0506</uro:buildingRoofEdgeArea>
<uro:fireproofStructureType codeSpace="../../codelists/BuildingDetailAttribute_fireproofStructureType.xml">1002</uro:fireproofStructureType>
<uro:urbanPlanType codeSpace="../../codelists/Common_urbanPlanType.xml">21</uro:urbanPlanType><uro:areaClassificationType codeSpace="../../codelists/Common_areaClassificationType.xml">22</uro:areaClassificationType>
<uro:districtsAndZonesType codeSpace="../../codelists/Common_districtsAndZonesType.xml">1</uro:districtsAndZonesType>
<uro:landUseType codeSpace="../../codelists/Common_landUseType.xml">211</uro:landUseType><uro:detailedUsage codeSpace="../../codelists/BuildingDetailAttribute_detailedUsage.xml">1310</uro:detailedUsage><uro:specifiedBuildingCoverageRate>40</uro:specifiedBuildingCoverageRate>
<uro:specifiedFloorAreaRate>80</uro:specifiedFloorAreaRate>
<uro:surveyYear>2022</uro:surveyYear>
</uro:BuildingDetailAttribute>
</uro:buildingDetailAttribute>
<uro:bldgDisasterRiskAttribute>
<uro:RiverFloodingRiskAttribute>
<uro:description codeSpace="../../codelists/RiverFloodingRiskAttribute_description.xml">21</uro:description>
<uro:rank codeSpace="../../codelists/RiverFloodingRiskAttribute_rank.xml">2</uro:rank>
<uro:depth uom="m">2.14</uro:depth>
<uro:adminType codeSpace="../../codelists/RiverFloodingRiskAttribute_adminType.xml">2</uro:adminType>
<uro:scale codeSpace="../../codelists/RiverFloodingRiskAttribute_scale.xml">2</uro:scale>
</uro:RiverFloodingRiskAttribute>
</uro:bldgDisasterRiskAttribute>
<uro:buildingIDAttribute>
<uro:BuildingIDAttribute>
<uro:buildingID>13209-bldg-29871</uro:buildingID>
<uro:prefecture codeSpace="../../codelists/Common_localPublicAuthorities.xml">13</uro:prefecture>
<uro:city codeSpace="../../codelists/Common_localPublicAuthorities.xml">13209</uro:city>
</uro:BuildingIDAttribute>
</uro:buildingIDAttribute>
			<uro:bldgDataQualityAttribute>
				<uro:DataQualityAttribute>
					<uro:geometrySrcDescLod0 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">000</uro:geometrySrcDescLod0>
					<uro:geometrySrcDescLod1 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">000</uro:geometrySrcDescLod1>
					<uro:geometrySrcDescLod2 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">999</uro:geometrySrcDescLod2>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">023</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">400</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">201</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">000</uro:thematicSrcDesc>
					<uro:appearanceSrcDescLod2 codeSpace="../../codelists/DataQualityAttribute_appearanceSrcDesc.xml">99</uro:appearanceSrcDescLod2>
					<uro:lod1HeightType codeSpace="../../codelists/DataQualityAttribute_lod1HeightType.xml">2</uro:lod1HeightType>
					<uro:publicSurveyDataQualityAttribute>
						<uro:PublicSurveyDataQualityAttribute>
							<uro:srcScaleLod0 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_srcScale.xml">1</uro:srcScaleLod0>
							<uro:srcScaleLod1 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_srcScale.xml">1</uro:srcScaleLod1>
							<uro:publicSurveySrcDescLod0 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_publicSurveySrcDesc.xml">023</uro:publicSurveySrcDescLod0>
							<uro:publicSurveySrcDescLod1 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_publicSurveySrcDesc.xml">023</uro:publicSurveySrcDescLod1>
						</uro:PublicSurveyDataQualityAttribute>
					</uro:publicSurveyDataQualityAttribute>
				</uro:DataQualityAttribute>
			</uro:bldgDataQualityAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">100</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key100.xml">12</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">101</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key101.xml">2</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">102</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key102.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">103</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key103.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">104</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key104.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">105</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key105.xml">1</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
	<uro:bldgKeyValuePairAttribute>
		<uro:KeyValuePairAttribute>
			<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">106</uro:key>
			<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key106.xml">99</uro:codeValue>
		</uro:KeyValuePairAttribute>
	</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">107</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key107.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
</bldg:Building>
</core:cityObjectMember>
<core:cityObjectMember>
<bldg:Building gml:id="bldg_1b7b67da-9f2c-489d-bc54-108f04b4b266">
<core:creationDate>2024-03-15</core:creationDate>
<gen:stringAttribute name="延べ面積換算係数"><gen:value>0.9</gen:value></gen:stringAttribute><gen:stringAttribute name="大字・町コード"><gen:value>20</gen:value></gen:stringAttribute><gen:stringAttribute name="13+区市町村コード+大字・町コード+町・丁目コード"><gen:value>13209020000</gen:value></gen:stringAttribute><bldg:class codeSpace="../../codelists/Building_class.xml">3001</bldg:class>
<bldg:usage codeSpace="../../codelists/Building_usage.xml">411</bldg:usage>
<bldg:measuredHeight uom="m">8.6</bldg:measuredHeight>
<bldg:storeysAboveGround>2</bldg:storeysAboveGround>
<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
<bldg:lod0RoofEdge>
<gml:MultiSurface srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/6697">
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58310002865671 139.3999123831056 0 35.58313020297795 139.3999815150786 0 35.58318460834983 139.39994591260725 0 35.58317715569769 139.39992884979438 0 35.58319604023203 139.3999165001047 0 35.58317322800434 139.3998643210492 0 35.58310002865671 139.3999123831056 0</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
</gml:MultiSurface>
</bldg:lod0RoofEdge>
<bldg:lod1Solid>
<gml:Solid srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/6697">
<gml:exterior>
<gml:CompositeSurface>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58310002865671 139.3999123831056 104.0209 35.58317322800434 139.3998643210492 104.0209 35.58319604023203 139.3999165001047 104.0209 35.58317715569769 139.39992884979438 104.0209 35.58318460834983 139.39994591260725 104.0209 35.58313020297795 139.3999815150786 104.0209 35.58310002865671 139.3999123831056 104.0209</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58310002865671 139.3999123831056 104.0209 35.58313020297795 139.3999815150786 104.0209 35.58313020297795 139.3999815150786 111.5209 35.58310002865671 139.3999123831056 111.5209 35.58310002865671 139.3999123831056 104.0209</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58313020297795 139.3999815150786 104.0209 35.58318460834983 139.39994591260725 104.0209 35.58318460834983 139.39994591260725 111.5209 35.58313020297795 139.3999815150786 111.5209 35.58313020297795 139.3999815150786 104.0209</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58318460834983 139.39994591260725 104.0209 35.58317715569769 139.39992884979438 104.0209 35.58317715569769 139.39992884979438 111.5209 35.58318460834983 139.39994591260725 111.5209 35.58318460834983 139.39994591260725 104.0209</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58317715569769 139.39992884979438 104.0209 35.58319604023203 139.3999165001047 104.0209 35.58319604023203 139.3999165001047 111.5209 35.58317715569769 139.39992884979438 111.5209 35.58317715569769 139.39992884979438 104.0209</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58319604023203 139.3999165001047 104.0209 35.58317322800434 139.3998643210492 104.0209 35.58317322800434 139.3998643210492 111.5209 35.58319604023203 139.3999165001047 111.5209 35.58319604023203 139.3999165001047 104.0209</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58317322800434 139.3998643210492 104.0209 35.58310002865671 139.3999123831056 104.0209 35.58310002865671 139.3999123831056 111.5209 35.58317322800434 139.3998643210492 111.5209 35.58317322800434 139.3998643210492 104.0209</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58310002865671 139.3999123831056 111.5209 35.58313020297795 139.3999815150786 111.5209 35.58318460834983 139.39994591260725 111.5209 35.58317715569769 139.39992884979438 111.5209 35.58319604023203 139.3999165001047 111.5209 35.58317322800434 139.3998643210492 111.5209 35.58310002865671 139.3999123831056 111.5209</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
</gml:CompositeSurface>
</gml:exterior>
</gml:Solid>
</bldg:lod1Solid>
<bldg:address><core:Address><core:xalAddress><xAL:AddressDetails><xAL:Country><xAL:CountryName>日本</xAL:CountryName><xAL:Locality><xAL:LocalityName Type="Town">東京都町田市常盤町</xAL:LocalityName></xAL:Locality></xAL:Country></xAL:AddressDetails></core:xalAddress></core:Address></bldg:address>
<uro:buildingDetailAttribute>
<uro:BuildingDetailAttribute>
<uro:buildingRoofEdgeArea uom="m2">61.3731</uro:buildingRoofEdgeArea>
<uro:fireproofStructureType codeSpace="../../codelists/BuildingDetailAttribute_fireproofStructureType.xml">1002</uro:fireproofStructureType>
<uro:urbanPlanType codeSpace="../../codelists/Common_urbanPlanType.xml">21</uro:urbanPlanType><uro:areaClassificationType codeSpace="../../codelists/Common_areaClassificationType.xml">22</uro:areaClassificationType>
<uro:districtsAndZonesType codeSpace="../../codelists/Common_districtsAndZonesType.xml">1</uro:districtsAndZonesType>
<uro:landUseType codeSpace="../../codelists/Common_landUseType.xml">211</uro:landUseType><uro:detailedUsage codeSpace="../../codelists/BuildingDetailAttribute_detailedUsage.xml">1310</uro:detailedUsage><uro:specifiedBuildingCoverageRate>40</uro:specifiedBuildingCoverageRate>
<uro:specifiedFloorAreaRate>80</uro:specifiedFloorAreaRate>
<uro:surveyYear>2022</uro:surveyYear>
</uro:BuildingDetailAttribute>
</uro:buildingDetailAttribute>
<uro:bldgDisasterRiskAttribute>
<uro:RiverFloodingRiskAttribute>
<uro:description codeSpace="../../codelists/RiverFloodingRiskAttribute_description.xml">21</uro:description>
<uro:rank codeSpace="../../codelists/RiverFloodingRiskAttribute_rank.xml">3</uro:rank>
<uro:depth uom="m">3.95</uro:depth>
<uro:adminType codeSpace="../../codelists/RiverFloodingRiskAttribute_adminType.xml">2</uro:adminType>
<uro:scale codeSpace="../../codelists/RiverFloodingRiskAttribute_scale.xml">2</uro:scale>
</uro:RiverFloodingRiskAttribute>
</uro:bldgDisasterRiskAttribute>
<uro:buildingIDAttribute>
<uro:BuildingIDAttribute>
<uro:buildingID>13209-bldg-29825</uro:buildingID>
<uro:prefecture codeSpace="../../codelists/Common_localPublicAuthorities.xml">13</uro:prefecture>
<uro:city codeSpace="../../codelists/Common_localPublicAuthorities.xml">13209</uro:city>
</uro:BuildingIDAttribute>
</uro:buildingIDAttribute>
			<uro:bldgDataQualityAttribute>
				<uro:DataQualityAttribute>
					<uro:geometrySrcDescLod0 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">000</uro:geometrySrcDescLod0>
					<uro:geometrySrcDescLod1 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">000</uro:geometrySrcDescLod1>
					<uro:geometrySrcDescLod2 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">999</uro:geometrySrcDescLod2>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">023</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">400</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">201</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">000</uro:thematicSrcDesc>
					<uro:appearanceSrcDescLod2 codeSpace="../../codelists/DataQualityAttribute_appearanceSrcDesc.xml">99</uro:appearanceSrcDescLod2>
					<uro:lod1HeightType codeSpace="../../codelists/DataQualityAttribute_lod1HeightType.xml">2</uro:lod1HeightType>
					<uro:publicSurveyDataQualityAttribute>
						<uro:PublicSurveyDataQualityAttribute>
							<uro:srcScaleLod0 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_srcScale.xml">1</uro:srcScaleLod0>
							<uro:srcScaleLod1 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_srcScale.xml">1</uro:srcScaleLod1>
							<uro:publicSurveySrcDescLod0 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_publicSurveySrcDesc.xml">023</uro:publicSurveySrcDescLod0>
							<uro:publicSurveySrcDescLod1 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_publicSurveySrcDesc.xml">023</uro:publicSurveySrcDescLod1>
						</uro:PublicSurveyDataQualityAttribute>
					</uro:publicSurveyDataQualityAttribute>
				</uro:DataQualityAttribute>
			</uro:bldgDataQualityAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">100</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key100.xml">12</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">101</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key101.xml">2</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">102</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key102.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">103</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key103.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">104</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key104.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">105</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key105.xml">1</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
	<uro:bldgKeyValuePairAttribute>
		<uro:KeyValuePairAttribute>
			<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">106</uro:key>
			<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key106.xml">99</uro:codeValue>
		</uro:KeyValuePairAttribute>
	</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">107</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key107.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
</bldg:Building>
</core:cityObjectMember>
<core:cityObjectMember>
<bldg:Building gml:id="bldg_eb2f8221-4c85-446f-952c-f54334c156fc">
<core:creationDate>2024-03-15</core:creationDate>
<gen:stringAttribute name="延べ面積換算係数"><gen:value>0.9</gen:value></gen:stringAttribute><gen:stringAttribute name="大字・町コード"><gen:value>20</gen:value></gen:stringAttribute><gen:stringAttribute name="13+区市町村コード+大字・町コード+町・丁目コード"><gen:value>13209020000</gen:value></gen:stringAttribute><bldg:class codeSpace="../../codelists/Building_class.xml">3001</bldg:class>
<bldg:usage codeSpace="../../codelists/Building_usage.xml">411</bldg:usage>
<bldg:measuredHeight uom="m">7.3</bldg:measuredHeight>
<bldg:storeysAboveGround>2</bldg:storeysAboveGround>
<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
<bldg:lod0RoofEdge>
<gml:MultiSurface srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/6697">
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58307851278939 139.39989484438763 0 35.5830502755309 139.3999132029052 0 35.58304364084398 139.39989801152234 0 35.58300793974827 139.39992126527463 0 35.58304347850451 139.4000032782324 0 35.58310750702071 139.39996166551933 0 35.58307851278939 139.39989484438763 0</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
</gml:MultiSurface>
</bldg:lod0RoofEdge>
<bldg:lod1Solid>
<gml:Solid srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/6697">
<gml:exterior>
<gml:CompositeSurface>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58307851278939 139.39989484438763 104.0122 35.58310750702071 139.39996166551933 104.0122 35.58304347850451 139.4000032782324 104.0122 35.58300793974827 139.39992126527463 104.0122 35.58304364084398 139.39989801152234 104.0122 35.5830502755309 139.3999132029052 104.0122 35.58307851278939 139.39989484438763 104.0122</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58307851278939 139.39989484438763 104.0122 35.5830502755309 139.3999132029052 104.0122 35.5830502755309 139.3999132029052 110.41220000000001 35.58307851278939 139.39989484438763 110.41220000000001 35.58307851278939 139.39989484438763 104.0122</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.5830502755309 139.3999132029052 104.0122 35.58304364084398 139.39989801152234 104.0122 35.58304364084398 139.39989801152234 110.41220000000001 35.5830502755309 139.3999132029052 110.41220000000001 35.5830502755309 139.3999132029052 104.0122</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58304364084398 139.39989801152234 104.0122 35.58300793974827 139.39992126527463 104.0122 35.58300793974827 139.39992126527463 110.41220000000001 35.58304364084398 139.39989801152234 110.41220000000001 35.58304364084398 139.39989801152234 104.0122</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58300793974827 139.39992126527463 104.0122 35.58304347850451 139.4000032782324 104.0122 35.58304347850451 139.4000032782324 110.41220000000001 35.58300793974827 139.39992126527463 110.41220000000001 35.58300793974827 139.39992126527463 104.0122</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58304347850451 139.4000032782324 104.0122 35.58310750702071 139.39996166551933 104.0122 35.58310750702071 139.39996166551933 110.41220000000001 35.58304347850451 139.4000032782324 110.41220000000001 35.58304347850451 139.4000032782324 104.0122</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58310750702071 139.39996166551933 104.0122 35.58307851278939 139.39989484438763 104.0122 35.58307851278939 139.39989484438763 110.41220000000001 35.58310750702071 139.39996166551933 110.41220000000001 35.58310750702071 139.39996166551933 104.0122</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
<gml:surfaceMember>
<gml:Polygon>
<gml:exterior>
<gml:LinearRing>
<gml:posList>35.58307851278939 139.39989484438763 110.41220000000001 35.5830502755309 139.3999132029052 110.41220000000001 35.58304364084398 139.39989801152234 110.41220000000001 35.58300793974827 139.39992126527463 110.41220000000001 35.58304347850451 139.4000032782324 110.41220000000001 35.58310750702071 139.39996166551933 110.41220000000001 35.58307851278939 139.39989484438763 110.41220000000001</gml:posList>
</gml:LinearRing>
</gml:exterior>
</gml:Polygon>
</gml:surfaceMember>
</gml:CompositeSurface>
</gml:exterior>
</gml:Solid>
</bldg:lod1Solid>
<bldg:address><core:Address><core:xalAddress><xAL:AddressDetails><xAL:Country><xAL:CountryName>日本</xAL:CountryName><xAL:Locality><xAL:LocalityName Type="Town">東京都町田市常盤町</xAL:LocalityName></xAL:Locality></xAL:Country></xAL:AddressDetails></core:xalAddress></core:Address></bldg:address>
<uro:buildingDetailAttribute>
<uro:BuildingDetailAttribute>
<uro:buildingRoofEdgeArea uom="m2">59.06981</uro:buildingRoofEdgeArea>
<uro:fireproofStructureType codeSpace="../../codelists/BuildingDetailAttribute_fireproofStructureType.xml">1002</uro:fireproofStructureType>
<uro:urbanPlanType codeSpace="../../codelists/Common_urbanPlanType.xml">21</uro:urbanPlanType><uro:areaClassificationType codeSpace="../../codelists/Common_areaClassificationType.xml">22</uro:areaClassificationType>
<uro:districtsAndZonesType codeSpace="../../codelists/Common_districtsAndZonesType.xml">1</uro:districtsAndZonesType>
<uro:landUseType codeSpace="../../codelists/Common_landUseType.xml">211</uro:landUseType><uro:detailedUsage codeSpace="../../codelists/BuildingDetailAttribute_detailedUsage.xml">1310</uro:detailedUsage><uro:specifiedBuildingCoverageRate>40</uro:specifiedBuildingCoverageRate>
<uro:specifiedFloorAreaRate>80</uro:specifiedFloorAreaRate>
<uro:surveyYear>2022</uro:surveyYear>
</uro:BuildingDetailAttribute>
</uro:buildingDetailAttribute>
<uro:bldgDisasterRiskAttribute>
<uro:RiverFloodingRiskAttribute>
<uro:description codeSpace="../../codelists/RiverFloodingRiskAttribute_description.xml">21</uro:description>
<uro:rank codeSpace="../../codelists/RiverFloodingRiskAttribute_rank.xml">3</uro:rank>
<uro:depth uom="m">4.02</uro:depth>
<uro:adminType codeSpace="../../codelists/RiverFloodingRiskAttribute_adminType.xml">2</uro:adminType>
<uro:scale codeSpace="../../codelists/RiverFloodingRiskAttribute_scale.xml">2</uro:scale>
</uro:RiverFloodingRiskAttribute>
</uro:bldgDisasterRiskAttribute>
<uro:buildingIDAttribute>
<uro:BuildingIDAttribute>
<uro:buildingID>13209-bldg-29846</uro:buildingID>
<uro:prefecture codeSpace="../../codelists/Common_localPublicAuthorities.xml">13</uro:prefecture>
<uro:city codeSpace="../../codelists/Common_localPublicAuthorities.xml">13209</uro:city>
</uro:BuildingIDAttribute>
</uro:buildingIDAttribute>
			<uro:bldgDataQualityAttribute>
				<uro:DataQualityAttribute>
					<uro:geometrySrcDescLod0 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">000</uro:geometrySrcDescLod0>
					<uro:geometrySrcDescLod1 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">000</uro:geometrySrcDescLod1>
					<uro:geometrySrcDescLod2 codeSpace="../../codelists/DataQualityAttribute_geometrySrcDesc.xml">999</uro:geometrySrcDescLod2>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">023</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">400</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">201</uro:thematicSrcDesc>
					<uro:thematicSrcDesc codeSpace="../../codelists/DataQualityAttribute_thematicSrcDesc.xml">000</uro:thematicSrcDesc>
					<uro:appearanceSrcDescLod2 codeSpace="../../codelists/DataQualityAttribute_appearanceSrcDesc.xml">99</uro:appearanceSrcDescLod2>
					<uro:lod1HeightType codeSpace="../../codelists/DataQualityAttribute_lod1HeightType.xml">2</uro:lod1HeightType>
					<uro:publicSurveyDataQualityAttribute>
						<uro:PublicSurveyDataQualityAttribute>
							<uro:srcScaleLod0 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_srcScale.xml">1</uro:srcScaleLod0>
							<uro:srcScaleLod1 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_srcScale.xml">1</uro:srcScaleLod1>
							<uro:publicSurveySrcDescLod0 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_publicSurveySrcDesc.xml">023</uro:publicSurveySrcDescLod0>
							<uro:publicSurveySrcDescLod1 codeSpace="../../codelists/PublicSurveyDataQualityAttribute_publicSurveySrcDesc.xml">023</uro:publicSurveySrcDescLod1>
						</uro:PublicSurveyDataQualityAttribute>
					</uro:publicSurveyDataQualityAttribute>
				</uro:DataQualityAttribute>
			</uro:bldgDataQualityAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">100</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key100.xml">12</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">101</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key101.xml">2</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">102</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key102.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">103</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key103.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">104</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key104.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">105</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key105.xml">1</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
	<uro:bldgKeyValuePairAttribute>
		<uro:KeyValuePairAttribute>
			<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">106</uro:key>
			<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key106.xml">99</uro:codeValue>
		</uro:KeyValuePairAttribute>
	</uro:bldgKeyValuePairAttribute>
<uro:bldgKeyValuePairAttribute>
<uro:KeyValuePairAttribute>
<uro:key codeSpace="../../codelists/KeyValuePairAttribute_key.xml">107</uro:key>
<uro:codeValue codeSpace="../../codelists/KeyValuePairAttribute_key107.xml">0</uro:codeValue>
</uro:KeyValuePairAttribute>
</uro:bldgKeyValuePairAttribute>
</bldg:Building>
</core:cityObjectMember>
</core:CityModel>
