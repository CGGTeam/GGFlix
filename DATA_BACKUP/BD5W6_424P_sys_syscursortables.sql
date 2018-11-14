CREATE TABLE sys.syscursortables
(
    cursor_handle int NOT NULL,
    table_owner nvarchar(128),
    table_name nvarchar(128),
    optimizer_hint smallint NOT NULL,
    lock_type smallint NOT NULL,
    server_name nvarchar(128),
    objectid int NOT NULL,
    dbid int NOT NULL,
    dbname nvarchar(128)
);