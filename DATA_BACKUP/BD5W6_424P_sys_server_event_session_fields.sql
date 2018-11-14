CREATE TABLE sys.server_event_session_fields
(
    event_session_id int NOT NULL,
    object_id int NOT NULL,
    name sysname,
    value sql_variant
);