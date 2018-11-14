CREATE TABLE sys.partition_range_values
(
    function_id int NOT NULL,
    boundary_id int NOT NULL,
    parameter_id int NOT NULL,
    value sql_variant
);