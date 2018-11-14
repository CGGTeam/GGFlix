CREATE TABLE sys.backup_devices
(
    name sysname NOT NULL,
    type tinyint,
    type_desc nvarchar(60),
    physical_name nvarchar(260)
);