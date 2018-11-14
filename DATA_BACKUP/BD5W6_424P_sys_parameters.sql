CREATE TABLE sys.parameters
(
    object_id int NOT NULL,
    name sysname,
    parameter_id int NOT NULL,
    system_type_id tinyint NOT NULL,
    user_type_id int NOT NULL,
    max_length smallint NOT NULL,
    precision tinyint NOT NULL,
    scale tinyint NOT NULL,
    is_output bit NOT NULL,
    is_cursor_ref bit NOT NULL,
    has_default_value bit NOT NULL,
    is_xml_document bit NOT NULL,
    default_value sql_variant,
    xml_collection_id int NOT NULL,
    is_readonly bit NOT NULL
);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1109578991, '', 0, 56, 56, 4, 10, 0, 1, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1045578763, '@definition', 4, 165, 165, -1, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1077578877, '@definition', 4, 165, 165, -1, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1013578649, '@diagramname', 1, 231, 256, 256, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1029578706, '@diagramname', 1, 231, 256, 256, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1045578763, '@diagramname', 1, 231, 256, 256, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1061578820, '@diagramname', 1, 231, 256, 256, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1077578877, '@diagramname', 1, 231, 256, 256, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1093578934, '@diagramname', 1, 231, 256, 256, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1061578820, '@new_diagramname', 3, 231, 256, 256, 0, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1013578649, '@owner_id', 2, 56, 56, 4, 10, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1029578706, '@owner_id', 2, 56, 56, 4, 10, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1045578763, '@owner_id', 2, 56, 56, 4, 10, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1061578820, '@owner_id', 2, 56, 56, 4, 10, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1077578877, '@owner_id', 2, 56, 56, 4, 10, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1093578934, '@owner_id', 2, 56, 56, 4, 10, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1045578763, '@version', 3, 56, 56, 4, 10, 0, 0, 0, 0, 0, null, 0, 0);
INSERT INTO sys.parameters (object_id, name, parameter_id, system_type_id, user_type_id, max_length, precision, scale, is_output, is_cursor_ref, has_default_value, is_xml_document, default_value, xml_collection_id, is_readonly) VALUES (1077578877, '@version', 3, 56, 56, 4, 10, 0, 0, 0, 0, 0, null, 0, 0);