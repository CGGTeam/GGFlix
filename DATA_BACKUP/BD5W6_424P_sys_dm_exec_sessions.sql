CREATE TABLE sys.dm_exec_sessions
(
    session_id smallint NOT NULL,
    login_time datetime NOT NULL,
    host_name nvarchar(128),
    program_name nvarchar(128),
    host_process_id int,
    client_version int,
    client_interface_name nvarchar(32),
    security_id varbinary(85) NOT NULL,
    login_name nvarchar(128) NOT NULL,
    nt_domain nvarchar(128),
    nt_user_name nvarchar(128),
    status nvarchar(30) NOT NULL,
    context_info varbinary(128),
    cpu_time int NOT NULL,
    memory_usage int NOT NULL,
    total_scheduled_time int NOT NULL,
    total_elapsed_time int NOT NULL,
    endpoint_id int NOT NULL,
    last_request_start_time datetime NOT NULL,
    last_request_end_time datetime,
    reads bigint NOT NULL,
    writes bigint NOT NULL,
    logical_reads bigint NOT NULL,
    is_user_process bit NOT NULL,
    text_size int NOT NULL,
    language nvarchar(128),
    date_format nvarchar(3),
    date_first smallint NOT NULL,
    quoted_identifier bit NOT NULL,
    arithabort bit NOT NULL,
    ansi_null_dflt_on bit NOT NULL,
    ansi_defaults bit NOT NULL,
    ansi_warnings bit NOT NULL,
    ansi_padding bit NOT NULL,
    ansi_nulls bit NOT NULL,
    concat_null_yields_null bit NOT NULL,
    transaction_isolation_level smallint NOT NULL,
    lock_timeout int NOT NULL,
    deadlock_priority int NOT NULL,
    row_count bigint NOT NULL,
    prev_error int NOT NULL,
    original_security_id varbinary(85) NOT NULL,
    original_login_name nvarchar(128) NOT NULL,
    last_successful_logon datetime,
    last_unsuccessful_logon datetime,
    unsuccessful_logons bigint,
    group_id int NOT NULL
);
INSERT INTO sys.dm_exec_sessions (session_id, login_time, host_name, program_name, host_process_id, client_version, client_interface_name, security_id, login_name, nt_domain, nt_user_name, status, context_info, cpu_time, memory_usage, total_scheduled_time, total_elapsed_time, endpoint_id, last_request_start_time, last_request_end_time, reads, writes, logical_reads, is_user_process, text_size, language, date_format, date_first, quoted_identifier, arithabort, ansi_null_dflt_on, ansi_defaults, ansi_warnings, ansi_padding, ansi_nulls, concat_null_yields_null, transaction_isolation_level, lock_timeout, deadlock_priority, row_count, prev_error, original_security_id, original_login_name, last_successful_logon, last_unsuccessful_logon, unsuccessful_logons, group_id) VALUES (51, '2018-11-14 12:42:15.160', 'Antoine-LPC', 'DataGrip', 0, 6, 'Microsoft JDBC Driver 7.0', 0xA04B21E8B77E8B4695521F60A17A6671, '5w6equipe424p', '', '', 'running', 0x, 0, 2, 0, 0, 4, '2018-11-14 12:42:15.190', '2018-11-14 12:42:15.180', 0, 0, 0, 1, -1, 'us_english', 'mdy', 7, 1, 0, 1, 0, 1, 1, 1, 1, 2, -1, 0, 1, 0, 0xA04B21E8B77E8B4695521F60A17A6671, '5w6equipe424p', null, null, null, 1);