CREATE TABLE sys.database_files
(
    file_id int NOT NULL,
    file_guid uniqueidentifier,
    type tinyint NOT NULL,
    type_desc nvarchar(60),
    data_space_id int NOT NULL,
    name sysname NOT NULL,
    physical_name nvarchar(260) NOT NULL,
    state tinyint,
    state_desc nvarchar(60),
    size int NOT NULL,
    max_size int NOT NULL,
    growth int NOT NULL,
    is_media_read_only bit NOT NULL,
    is_read_only bit NOT NULL,
    is_sparse bit NOT NULL,
    is_percent_growth bit NOT NULL,
    is_name_reserved bit NOT NULL,
    create_lsn numeric(25),
    drop_lsn numeric(25),
    read_only_lsn numeric(25),
    read_write_lsn numeric(25),
    differential_base_lsn numeric(25),
    differential_base_guid uniqueidentifier,
    differential_base_time datetime,
    redo_start_lsn numeric(25),
    redo_start_fork_guid uniqueidentifier,
    redo_target_lsn numeric(25),
    redo_target_fork_guid uniqueidentifier,
    backup_lsn numeric(25)
);
INSERT INTO sys.database_files (file_id, file_guid, type, type_desc, data_space_id, name, physical_name, state, state_desc, size, max_size, growth, is_media_read_only, is_read_only, is_sparse, is_percent_growth, is_name_reserved, create_lsn, drop_lsn, read_only_lsn, read_write_lsn, differential_base_lsn, differential_base_guid, differential_base_time, redo_start_lsn, redo_start_fork_guid, redo_target_lsn, redo_target_fork_guid, backup_lsn) VALUES (1, '1D2552E8-B9C9-47DC-81A8-62C1D5AA3326', 0, 'ROWS', 1, 'BD5W6_424P', 'D:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLINFO\MSSQL\DATA\BD5W6_424P.mdf', 0, 'ONLINE', 384, -1, 128, 0, 0, 0, 0, 0, null, null, null, null, 126000000039700214, '15ABAFC5-CA14-4AE5-8AF3-D26B83F8505A', '2018-11-14 17:26:57.247', null, null, null, null, null);
INSERT INTO sys.database_files (file_id, file_guid, type, type_desc, data_space_id, name, physical_name, state, state_desc, size, max_size, growth, is_media_read_only, is_read_only, is_sparse, is_percent_growth, is_name_reserved, create_lsn, drop_lsn, read_only_lsn, read_write_lsn, differential_base_lsn, differential_base_guid, differential_base_time, redo_start_lsn, redo_start_fork_guid, redo_target_lsn, redo_target_fork_guid, backup_lsn) VALUES (2, '7934708A-93F6-4EE3-8589-1E99BE4AAB2B', 1, 'LOG', 0, 'BD5W6_424P_log', 'D:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLINFO\MSSQL\DATA\BD5W6_424P_log.ldf', 0, 'ONLINE', 128, 268435456, 10, 0, 0, 0, 1, 0, null, null, null, null, null, null, null, null, null, null, null, null);