CREATE TABLE sys.xml_schema_wildcards
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
    process_content char(1) NOT NULL,
    process_content_desc nvarchar(60),
    disallow_namespaces bit NOT NULL
);
INSERT INTO sys.xml_schema_wildcards (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, process_content, process_content_desc, disallow_namespaces) VALUES (381, 1, 2, 0, null, 'N', 'NONE', 'W', 'ELEMENT_WILDCARD', 'N', 'NONE', null, 380, 'P', 'SKIP_VALIDATION', 1);