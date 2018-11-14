CREATE TABLE sys.server_trigger_events
(
    object_id int NOT NULL,
    type int NOT NULL,
    type_desc nvarchar(128) NOT NULL,
    is_first bit,
    is_last bit,
    event_group_type int,
    event_group_type_desc nvarchar(128)
);