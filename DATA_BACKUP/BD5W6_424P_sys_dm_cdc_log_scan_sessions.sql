CREATE TABLE sys.dm_cdc_log_scan_sessions
(
    session_id int,
    start_time datetime,
    end_time datetime,
    duration int,
    scan_phase nvarchar(200),
    error_count int,
    start_lsn nvarchar(24),
    current_lsn nvarchar(24),
    end_lsn nvarchar(24),
    tran_count bigint,
    last_commit_lsn nvarchar(24),
    last_commit_time datetime,
    log_record_count bigint,
    schema_change_count int,
    command_count bigint,
    first_begin_cdc_lsn nvarchar(24),
    last_commit_cdc_lsn nvarchar(24),
    last_commit_cdc_time datetime,
    latency int,
    empty_scan_count int,
    failed_sessions_count int
);