CREATE TABLE sys.server_audits
(
    audit_id int NOT NULL,
    name sysname NOT NULL,
    audit_guid uniqueidentifier,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    principal_id int,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    on_failure tinyint,
    on_failure_desc nvarchar(60),
    is_state_enabled bit,
    queue_delay int
);