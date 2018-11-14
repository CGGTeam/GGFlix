CREATE TABLE sys.fulltext_indexes
(
    object_id int NOT NULL,
    unique_index_id int NOT NULL,
    fulltext_catalog_id int,
    is_enabled bit NOT NULL,
    change_tracking_state char(1),
    change_tracking_state_desc nvarchar(60),
    has_crawl_completed bit NOT NULL,
    crawl_type char(1) NOT NULL,
    crawl_type_desc nvarchar(60),
    crawl_start_date datetime,
    crawl_end_date datetime,
    incremental_timestamp binary(8),
    stoplist_id int,
    data_space_id int NOT NULL
);