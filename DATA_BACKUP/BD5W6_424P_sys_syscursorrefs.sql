CREATE TABLE sys.syscursorrefs
(
    reference_name nvarchar(128),
    cursor_scope tinyint NOT NULL,
    cursor_handl int NOT NULL
);