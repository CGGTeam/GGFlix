CREATE TABLE sys.server_audit_specifications
(
    server_specification_id int NOT NULL,
    name sysname NOT NULL,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    audit_guid uniqueidentifier,
    is_state_enabled bit
);