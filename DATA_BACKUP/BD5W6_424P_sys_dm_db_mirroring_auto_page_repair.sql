CREATE TABLE sys.dm_db_mirroring_auto_page_repair
(
    database_id int NOT NULL,
    file_id int NOT NULL,
    page_id bigint NOT NULL,
    error_type smallint NOT NULL,
    page_status tinyint NOT NULL,
    modification_time datetime NOT NULL
);