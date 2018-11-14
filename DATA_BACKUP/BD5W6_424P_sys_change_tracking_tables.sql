CREATE TABLE sys.change_tracking_tables
(
    object_id int NOT NULL,
    is_track_columns_updated_on bit NOT NULL,
    min_valid_version bigint,
    begin_version bigint,
    cleanup_version bigint
);