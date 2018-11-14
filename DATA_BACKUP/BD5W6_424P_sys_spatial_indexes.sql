CREATE TABLE sys.spatial_indexes
(
    object_id int NOT NULL,
    name sysname,
    index_id int NOT NULL,
    type tinyint NOT NULL,
    type_desc nvarchar(60),
    is_unique bit,
    data_space_id int NOT NULL,
    ignore_dup_key bit,
    is_primary_key bit,
    is_unique_constraint bit,
    fill_factor tinyint NOT NULL,
    is_padded bit,
    is_disabled bit,
    is_hypothetical bit,
    allow_row_locks bit,
    allow_page_locks bit,
    spatial_index_type int NOT NULL,
    spatial_index_type_desc nvarchar(60),
    tessellation_scheme nvarchar(60),
    has_filter bit NOT NULL,
    filter_definition nvarchar(max)
);