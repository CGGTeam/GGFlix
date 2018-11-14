CREATE TABLE sys.triggers
(
    name sysname NOT NULL,
    object_id int NOT NULL,
    parent_class tinyint NOT NULL,
    parent_class_desc nvarchar(60),
    parent_id int NOT NULL,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    is_ms_shipped bit NOT NULL,
    is_disabled bit NOT NULL,
    is_not_for_replication bit NOT NULL,
    is_instead_of_trigger bit NOT NULL
);