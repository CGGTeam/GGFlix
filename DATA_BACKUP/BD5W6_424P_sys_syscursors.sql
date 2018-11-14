CREATE TABLE sys.syscursors
(
    cursor_handle int NOT NULL,
    cursor_name nvarchar(128),
    status int NOT NULL,
    model tinyint NOT NULL,
    concurrency tinyint NOT NULL,
    scrollable tinyint NOT NULL,
    open_status tinyint NOT NULL,
    cursor_rows numeric(10),
    fetch_status smallint NOT NULL,
    column_count smallint NOT NULL,
    row_count numeric(10),
    last_operation tinyint NOT NULL
);