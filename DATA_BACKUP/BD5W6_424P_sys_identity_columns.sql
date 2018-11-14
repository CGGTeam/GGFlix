CREATE TABLE sys.identity_columns
(
    object_id int NOT NULL,
    name sysname,
    column_id int NOT NULL,
    system_type_id tinyint NOT NULL,
    user_type_id int NOT NULL,
    max_length smallint NOT NULL,
    precision tinyint NOT NULL,
    scale tinyint NOT NULL,
    collation_name sysname,
    is_nullable bit,
    is_ansi_padded bit NOT NULL,
    is_rowguidcol bit NOT NULL,
    is_identity bit NOT NULL,
    is_filestream bit NOT NULL,
    is_replicated bit,
    is_non_sql_subscribed bit,
    is_merge_published bit,
    is_dts_replicated bit,
    is_xml_document bit NOT NULL,
    xml_collection_id int NOT NULL,
    default_object_id int NOT NULL,
    rule_object_id int NOT NULL,
    seed_value sql_variant,
    increment_value sql_variant,
    last_value sql_variant,
    is_not_for_replication bit,
    is_computed bit NOT NULL,
    is_sparse bit NOT NULL,
    is_column_set bit NOT NULL
);
INSERT INTO sys.identity_columns (object_id, name, column_id, system_type_id, user_type_id, max_length, precision, scale, collation_name, is_nullable, is_ansi_padded, is_rowguidcol, is_identity, is_filestream, is_replicated, is_non_sql_subscribed, is_merge_published, is_dts_replicated, is_xml_document, xml_collection_id, default_object_id, rule_object_id, seed_value, increment_value, last_value, is_not_for_replication, is_computed, is_sparse, is_column_set) VALUES (933578364, 'diagram_id', 3, 56, 56, 4, 10, 0, null, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, null, 0, 0, 0, 0);
INSERT INTO sys.identity_columns (object_id, name, column_id, system_type_id, user_type_id, max_length, precision, scale, collation_name, is_nullable, is_ansi_padded, is_rowguidcol, is_identity, is_filestream, is_replicated, is_non_sql_subscribed, is_merge_published, is_dts_replicated, is_xml_document, xml_collection_id, default_object_id, rule_object_id, seed_value, increment_value, last_value, is_not_for_replication, is_computed, is_sparse, is_column_set) VALUES (1993058136, 'queuing_order', 3, 127, 127, 8, 19, 0, null, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null, 0, 0, 0, 0);
INSERT INTO sys.identity_columns (object_id, name, column_id, system_type_id, user_type_id, max_length, precision, scale, collation_name, is_nullable, is_ansi_padded, is_rowguidcol, is_identity, is_filestream, is_replicated, is_non_sql_subscribed, is_merge_published, is_dts_replicated, is_xml_document, xml_collection_id, default_object_id, rule_object_id, seed_value, increment_value, last_value, is_not_for_replication, is_computed, is_sparse, is_column_set) VALUES (2025058250, 'queuing_order', 3, 127, 127, 8, 19, 0, null, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null, 0, 0, 0, 0);
INSERT INTO sys.identity_columns (object_id, name, column_id, system_type_id, user_type_id, max_length, precision, scale, collation_name, is_nullable, is_ansi_padded, is_rowguidcol, is_identity, is_filestream, is_replicated, is_non_sql_subscribed, is_merge_published, is_dts_replicated, is_xml_document, xml_collection_id, default_object_id, rule_object_id, seed_value, increment_value, last_value, is_not_for_replication, is_computed, is_sparse, is_column_set) VALUES (2057058364, 'queuing_order', 3, 127, 127, 8, 19, 0, null, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null, 0, 0, 0, 0);