CREATE TABLE sys.xml_schema_attributes
(
    xml_component_id int NOT NULL,
    xml_collection_id int NOT NULL,
    xml_namespace_id int NOT NULL,
    is_qualified bit NOT NULL,
    name nvarchar(4000),
    symbol_space char(1) NOT NULL,
    symbol_space_desc nvarchar(60),
    kind char(1) NOT NULL,
    kind_desc nvarchar(60),
    derivation char(1) NOT NULL,
    derivation_desc nvarchar(60),
    base_xml_component_id int,
    scoping_xml_component_id int,
    is_default_fixed bit NOT NULL,
    must_be_qualified bit NOT NULL,
    default_value nvarchar(4000)
);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (260, 1, 3, 1, 'lang', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (261, 1, 3, 1, 'base', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (262, 1, 3, 1, 'space', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (361, 1, 2, 1, 'sqlDbType', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (362, 1, 2, 1, 'clrTypeName', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (363, 1, 2, 1, 'maxLength', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (364, 1, 2, 1, 'localeId', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (365, 1, 2, 1, 'sqlCompareOptions', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (366, 1, 2, 1, 'sqlCollationVersion', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (367, 1, 2, 1, 'sqlSortId', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (368, 1, 2, 1, 'scale', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (369, 1, 2, 1, 'precision', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (370, 1, 2, 1, 'xmlSchemaCollection', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (371, 1, 2, 1, 'sqlTypeAlias', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);
INSERT INTO sys.xml_schema_attributes (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, is_default_fixed, must_be_qualified, default_value) VALUES (372, 1, 2, 1, 'base64Encoded', 'A', 'ATTRIBUTE', 'A', 'ATTRIBUTE', 'N', 'NONE', null, null, 0, 1, null);