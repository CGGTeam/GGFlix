CREATE TABLE sys.database_audit_specifications
(
    database_specification_id int NOT NULL,
    name sysname NOT NULL,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    audit_guid uniqueidentifier,
    is_state_enabled bit
);