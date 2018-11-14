CREATE TABLE sys.table_types
(
    name sysname NOT NULL,
    system_type_id tinyint NOT NULL,
    user_type_id int NOT NULL,
    schema_id int NOT NULL,
    principal_id int,
    max_length smallint NOT NULL,
    precision tinyint NOT NULL,
    scale tinyint NOT NULL,
    collation_name sysname,
    is_nullable bit,
    is_user_defined bit NOT NULL,
    is_assembly_type bit NOT NULL,
    default_object_id int NOT NULL,
    rule_object_id int NOT NULL,
    is_table_type bit NOT NULL,
    type_table_object_id int NOT NULL
);