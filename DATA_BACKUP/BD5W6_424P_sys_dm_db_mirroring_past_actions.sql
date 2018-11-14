CREATE TABLE sys.dm_db_mirroring_past_actions
(
    mirroring_guid uniqueidentifier,
    state_machine_name nvarchar(60),
    action_type nvarchar(60),
    name nvarchar(60),
    current_state nvarchar(60),
    action_sequence int NOT NULL
);