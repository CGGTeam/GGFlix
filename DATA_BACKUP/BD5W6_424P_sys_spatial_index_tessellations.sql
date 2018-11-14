CREATE TABLE sys.spatial_index_tessellations
(
    object_id int NOT NULL,
    index_id int NOT NULL,
    tessellation_scheme nvarchar(60),
    bounding_box_xmin float,
    bounding_box_ymin float,
    bounding_box_xmax float,
    bounding_box_ymax float,
    level_1_grid smallint,
    level_1_grid_desc nvarchar(60),
    level_2_grid smallint,
    level_2_grid_desc nvarchar(60),
    level_3_grid smallint,
    level_3_grid_desc nvarchar(60),
    level_4_grid smallint,
    level_4_grid_desc nvarchar(60),
    cells_per_object int
);