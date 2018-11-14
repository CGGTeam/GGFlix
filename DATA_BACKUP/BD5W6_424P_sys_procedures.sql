CREATE TABLE sys.procedures
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
    is_auto_executed bit NOT NULL,
    is_execution_replicated bit,
    is_repl_serializable_only bit,
    skips_repl_constraints bit
);
INSERT INTO sys.procedures (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, is_auto_executed, is_execution_replicated, is_repl_serializable_only, skips_repl_constraints) VALUES ('sp_upgraddiagrams', 917578307, null, 1, 0, 'P ', 'SQL_STORED_PROCEDURE', '2018-11-14 12:22:58.900', '2018-11-14 12:22:58.900', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO sys.procedures (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, is_auto_executed, is_execution_replicated, is_repl_serializable_only, skips_repl_constraints) VALUES ('sp_helpdiagrams', 1013578649, null, 1, 0, 'P ', 'SQL_STORED_PROCEDURE', '2018-11-14 12:22:59.223', '2018-11-14 12:22:59.223', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO sys.procedures (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, is_auto_executed, is_execution_replicated, is_repl_serializable_only, skips_repl_constraints) VALUES ('sp_helpdiagramdefinition', 1029578706, null, 1, 0, 'P ', 'SQL_STORED_PROCEDURE', '2018-11-14 12:22:59.363', '2018-11-14 12:22:59.363', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO sys.procedures (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, is_auto_executed, is_execution_replicated, is_repl_serializable_only, skips_repl_constraints) VALUES ('sp_creatediagram', 1045578763, null, 1, 0, 'P ', 'SQL_STORED_PROCEDURE', '2018-11-14 12:22:59.367', '2018-11-14 12:22:59.367', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO sys.procedures (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, is_auto_executed, is_execution_replicated, is_repl_serializable_only, skips_repl_constraints) VALUES ('sp_renamediagram', 1061578820, null, 1, 0, 'P ', 'SQL_STORED_PROCEDURE', '2018-11-14 12:22:59.383', '2018-11-14 12:22:59.383', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO sys.procedures (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, is_auto_executed, is_execution_replicated, is_repl_serializable_only, skips_repl_constraints) VALUES ('sp_alterdiagram', 1077578877, null, 1, 0, 'P ', 'SQL_STORED_PROCEDURE', '2018-11-14 12:22:59.410', '2018-11-14 12:22:59.410', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO sys.procedures (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, is_auto_executed, is_execution_replicated, is_repl_serializable_only, skips_repl_constraints) VALUES ('sp_dropdiagram', 1093578934, null, 1, 0, 'P ', 'SQL_STORED_PROCEDURE', '2018-11-14 12:22:59.430', '2018-11-14 12:22:59.430', 0, 0, 0, 0, 0, 0, 0);