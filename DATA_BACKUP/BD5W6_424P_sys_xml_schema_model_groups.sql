CREATE TABLE sys.xml_schema_model_groups
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
    compositor char(1) NOT NULL,
    compositor_desc nvarchar(60)
);
INSERT INTO sys.xml_schema_model_groups (xml_component_id, xml_collection_id, xml_namespace_id, is_qualified, name, symbol_space, symbol_space_desc, kind, kind_desc, derivation, derivation_desc, base_xml_component_id, scoping_xml_component_id, compositor, compositor_desc) VALUES (380, 1, 2, 0, null, 'M', 'MODEL_GROUP', 'M', 'MODEL_GROUP', 'N', 'NONE', null, 329, 'S', 'XSD_SEQUENCE_GROUP');