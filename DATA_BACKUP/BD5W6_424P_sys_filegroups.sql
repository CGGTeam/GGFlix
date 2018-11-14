CREATE TABLE sys.filegroups
(
    name sysname NOT NULL,
    data_space_id int NOT NULL,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    is_default bit,
    filegroup_guid uniqueidentifier,
    log_filegroup_id int,
    is_read_only bit
);
INSERT INTO sys.filegroups (name, data_space_id, type, type_desc, is_default, filegroup_guid, log_filegroup_id, is_read_only) VALUES ('PRIMARY', 1, 'FG', 'ROWS_FILEGROUP', 1, null, null, 0);