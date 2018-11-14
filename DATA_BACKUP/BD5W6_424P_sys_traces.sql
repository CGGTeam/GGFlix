CREATE TABLE sys.traces
(
    id int NOT NULL,
    status int NOT NULL,
    path nvarchar(260),
    max_size bigint,
    stop_time datetime,
    max_files int,
    is_rowset bit,
    is_rollover bit,
    is_shutdown bit,
    is_default bit,
    buffer_count int,
    buffer_size int,
    file_position bigint,
    reader_spid int,
    start_time datetime,
    last_event_time datetime,
    event_count bigint,
    dropped_event_count int
);