CREATE TABLE sys.syscursorcolumns
(
    cursor_handle int NOT NULL,
    column_name nvarchar(128),
    ordinal_position int NOT NULL,
    column_characteristics_flags int NOT NULL,
    column_size int NOT NULL,
    data_type_sql int NOT NULL,
    column_precision tinyint NOT NULL,
    column_scale tinyint NOT NULL,
    order_position int NOT NULL,
    order_direction nvarchar(1),
    hidden_column smallint NOT NULL,
    columnid int NOT NULL,
    objectid int NOT NULL,
    dbid int NOT NULL,
    dbname nvarchar(128)
);