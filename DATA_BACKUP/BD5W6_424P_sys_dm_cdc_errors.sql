CREATE TABLE sys.dm_cdc_errors
(
    session_id int,
    phase_number int,
    entry_time datetime,
    error_number int,
    error_severity int,
    error_state int,
    error_message nvarchar(1025),
    start_lsn nvarchar(24),
    begin_lsn nvarchar(24),
    sequence_value nvarchar(24)
);