CREATE TABLE sys.sql_expression_dependencies
(
    referencing_id int NOT NULL,
    referencing_minor_id int NOT NULL,
    referencing_class tinyint,
    referencing_class_desc nvarchar(60),
    is_schema_bound_reference bit NOT NULL,
    referenced_class tinyint,
    referenced_class_desc nvarchar(60),
    referenced_server_name nvarchar(128),
    referenced_database_name nvarchar(128),
    referenced_schema_name nvarchar(128),
    referenced_entity_name nvarchar(128),
    referenced_id int,
    referenced_minor_id int NOT NULL,
    is_caller_dependent bit NOT NULL,
    is_ambiguous bit NOT NULL
);
INSERT INTO sys.sql_expression_dependencies (referencing_id, referencing_minor_id, referencing_class, referencing_class_desc, is_schema_bound_reference, referenced_class, referenced_class_desc, referenced_server_name, referenced_database_name, referenced_schema_name, referenced_entity_name, referenced_id, referenced_minor_id, is_caller_dependent, is_ambiguous) VALUES (917578307, 0, 1, 'OBJECT_OR_COLUMN', 0, 1, 'OBJECT_OR_COLUMN', null, null, 'dbo', 'dtproperties', null, 0, 0, 0);
INSERT INTO sys.sql_expression_dependencies (referencing_id, referencing_minor_id, referencing_class, referencing_class_desc, is_schema_bound_reference, referenced_class, referenced_class_desc, referenced_server_name, referenced_database_name, referenced_schema_name, referenced_entity_name, referenced_id, referenced_minor_id, is_caller_dependent, is_ambiguous) VALUES (917578307, 0, 1, 'OBJECT_OR_COLUMN', 0, 1, 'OBJECT_OR_COLUMN', null, null, 'dbo', 'sysdiagrams', 933578364, 0, 0, 0);
INSERT INTO sys.sql_expression_dependencies (referencing_id, referencing_minor_id, referencing_class, referencing_class_desc, is_schema_bound_reference, referenced_class, referenced_class_desc, referenced_server_name, referenced_database_name, referenced_schema_name, referenced_entity_name, referenced_id, referenced_minor_id, is_caller_dependent, is_ambiguous) VALUES (1013578649, 0, 1, 'OBJECT_OR_COLUMN', 0, 1, 'OBJECT_OR_COLUMN', null, null, null, 'sysdiagrams', 933578364, 0, 0, 0);
INSERT INTO sys.sql_expression_dependencies (referencing_id, referencing_minor_id, referencing_class, referencing_class_desc, is_schema_bound_reference, referenced_class, referenced_class_desc, referenced_server_name, referenced_database_name, referenced_schema_name, referenced_entity_name, referenced_id, referenced_minor_id, is_caller_dependent, is_ambiguous) VALUES (1029578706, 0, 1, 'OBJECT_OR_COLUMN', 0, 1, 'OBJECT_OR_COLUMN', null, null, 'dbo', 'sysdiagrams', 933578364, 0, 0, 0);
INSERT INTO sys.sql_expression_dependencies (referencing_id, referencing_minor_id, referencing_class, referencing_class_desc, is_schema_bound_reference, referenced_class, referenced_class_desc, referenced_server_name, referenced_database_name, referenced_schema_name, referenced_entity_name, referenced_id, referenced_minor_id, is_caller_dependent, is_ambiguous) VALUES (1045578763, 0, 1, 'OBJECT_OR_COLUMN', 0, 1, 'OBJECT_OR_COLUMN', null, null, 'dbo', 'sysdiagrams', 933578364, 0, 0, 0);
INSERT INTO sys.sql_expression_dependencies (referencing_id, referencing_minor_id, referencing_class, referencing_class_desc, is_schema_bound_reference, referenced_class, referenced_class_desc, referenced_server_name, referenced_database_name, referenced_schema_name, referenced_entity_name, referenced_id, referenced_minor_id, is_caller_dependent, is_ambiguous) VALUES (1061578820, 0, 1, 'OBJECT_OR_COLUMN', 0, 1, 'OBJECT_OR_COLUMN', null, null, 'dbo', 'sysdiagrams', 933578364, 0, 0, 0);
INSERT INTO sys.sql_expression_dependencies (referencing_id, referencing_minor_id, referencing_class, referencing_class_desc, is_schema_bound_reference, referenced_class, referenced_class_desc, referenced_server_name, referenced_database_name, referenced_schema_name, referenced_entity_name, referenced_id, referenced_minor_id, is_caller_dependent, is_ambiguous) VALUES (1077578877, 0, 1, 'OBJECT_OR_COLUMN', 0, 1, 'OBJECT_OR_COLUMN', null, null, 'dbo', 'sysdiagrams', 933578364, 0, 0, 0);
INSERT INTO sys.sql_expression_dependencies (referencing_id, referencing_minor_id, referencing_class, referencing_class_desc, is_schema_bound_reference, referenced_class, referenced_class_desc, referenced_server_name, referenced_database_name, referenced_schema_name, referenced_entity_name, referenced_id, referenced_minor_id, is_caller_dependent, is_ambiguous) VALUES (1093578934, 0, 1, 'OBJECT_OR_COLUMN', 0, 1, 'OBJECT_OR_COLUMN', null, null, 'dbo', 'sysdiagrams', 933578364, 0, 0, 0);