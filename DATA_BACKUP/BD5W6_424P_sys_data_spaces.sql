CREATE TABLE sys.data_spaces
(
    name sysname NOT NULL,
    data_space_id int NOT NULL,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    is_default bit NOT NULL
);
INSERT INTO sys.data_spaces (name, data_space_id, type, type_desc, is_default) VALUES ('PRIMARY', 1, 'FG', 'ROWS_FILEGROUP', 1);