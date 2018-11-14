CREATE TABLE sys.tables
(
    name sysname NOT NULL,
    object_id int NOT NULL,
    principal_id int,
    schema_id int NOT NULL,
    parent_object_id int NOT NULL,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    is_ms_shipped bit NOT NULL,
    is_published bit NOT NULL,
    is_schema_published bit NOT NULL,
    lob_data_space_id int,
    filestream_data_space_id int,
    max_column_id_used int NOT NULL,
    lock_on_bulk_load bit NOT NULL,
    uses_ansi_nulls bit,
    is_replicated bit,
    has_replication_filter bit,
    is_merge_published bit,
    is_sync_tran_subscribed bit,
    has_unchecked_assembly_data bit NOT NULL,
    text_in_row_limit int,
    large_value_types_out_of_row bit,
    is_tracked_by_cdc bit,
    lock_escalation tinyint,
    lock_escalation_desc nvarchar(60)
);
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Langues', 21575115, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.380', '2018-10-31 16:21:33.550', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Preferences', 53575229, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.387', '2018-10-31 16:21:33.587', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Producteurs', 85575343, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.400', '2018-10-31 16:21:33.513', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Realisateurs', 117575457, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.407', '2018-10-31 16:21:33.523', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('SousTitres', 149575571, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.413', '2018-10-31 16:21:33.560', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Supplements', 181575685, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.420', '2018-10-31 16:21:33.573', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('TypesUtilisateur', 213575799, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.423', '2018-10-31 16:21:33.580', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Categories', 245575913, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.427', '2018-10-31 16:21:33.500', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('FilmsActeurs', 277576027, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.433', '2018-10-31 16:21:33.540', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Films', 309576141, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.440', '2018-10-31 16:21:33.567', 0, 0, 0, 0, null, 17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('EmpruntsFilms', 341576255, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.447', '2018-10-31 16:21:33.490', 0, 0, 0, 0, null, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('FilmsSousTitres', 373576369, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.450', '2018-10-31 16:21:33.560', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('FilmsSupplements', 405576483, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.457', '2018-10-31 16:21:33.573', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('FilmsLangues', 437576597, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.463', '2018-10-31 16:21:33.550', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('UtilisateursPreferences', 469576711, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.467', '2018-10-31 16:21:33.597', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Utilisateurs', 501576825, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.470', '2018-10-31 16:21:33.593', 0, 0, 0, 0, null, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Exemplaires', 533576939, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.477', '2018-10-31 16:21:33.497', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('ValeursPreferences', 565577053, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.480', '2018-10-31 16:21:33.597', 0, 0, 0, 0, null, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('sysdiagrams', 933578364, null, 1, 0, 'U ', 'USER_TABLE', '2018-11-14 12:22:59.083', '2018-11-14 12:22:59.207', 0, 0, 0, 1, null, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Acteurs', 2105058535, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.357', '2018-10-31 16:21:33.533', 0, 0, 0, 0, null, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');
INSERT INTO sys.tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, lob_data_space_id, filestream_data_space_id, max_column_id_used, lock_on_bulk_load, uses_ansi_nulls, is_replicated, has_replication_filter, is_merge_published, is_sync_tran_subscribed, has_unchecked_assembly_data, text_in_row_limit, large_value_types_out_of_row, is_tracked_by_cdc, lock_escalation, lock_escalation_desc) VALUES ('Formats', 2137058649, null, 1, 0, 'U ', 'USER_TABLE', '2018-10-31 16:21:33.377', '2018-10-31 16:21:33.507', 0, 0, 0, 0, null, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TABLE');