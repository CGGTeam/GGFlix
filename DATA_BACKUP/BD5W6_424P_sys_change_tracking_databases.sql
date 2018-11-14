CREATE TABLE sys.change_tracking_databases
(
    database_id int NOT NULL,
    is_auto_cleanup_on tinyint,
    retention_period int,
    retention_period_units tinyint,
    retention_period_units_desc nvarchar(60),
    max_cleanup_version bigint
);