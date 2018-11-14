CREATE TABLE sys.server_file_audits
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
    queue_delay int,
    max_file_size bigint,
    max_rollover_files int,
    reserve_disk_space bit,
    log_file_path nvarchar(260),
    log_file_name nvarchar(260)
);