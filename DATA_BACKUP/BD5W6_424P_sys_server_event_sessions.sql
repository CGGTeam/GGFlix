CREATE TABLE sys.server_event_sessions
(
    event_session_id int NOT NULL,
    name nvarchar(128),
    event_retention_mode char(1),
    event_retention_mode_desc nvarchar(60),
    max_dispatch_latency int,
    max_memory int,
    max_event_size int,
    memory_partition_mode char(1),
    memory_partition_mode_desc nvarchar(60),
    track_causality bit,
    startup_state bit
);