CREATE TABLE sys.dm_db_script_level
(
    database_id int NOT NULL,
    script_id int NOT NULL,
    script_name nvarchar(128),
    version int NOT NULL,
    script_level int NOT NULL,
    downgrade_start_level int NOT NULL,
    downgrade_target_level int NOT NULL,
    upgrade_start_level int,
    upgrade_target_level int
);