CREATE TABLE sys.server_event_session_events
(
    event_session_id int NOT NULL,
    event_id int NOT NULL,
    name sysname,
    package nvarchar(128),
    module nvarchar(128),
    predicate nvarchar(3000)
);