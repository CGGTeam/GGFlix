CREATE TABLE sys.server_event_session_targets
(
    event_session_id int NOT NULL,
    target_id int NOT NULL,
    name sysname,
    package nvarchar(128),
    module nvarchar(128)
);