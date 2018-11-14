CREATE TABLE sys.partition_parameters
(
    function_id int NOT NULL,
    parameter_id int NOT NULL,
    system_type_id tinyint NOT NULL,
    max_length smallint NOT NULL,
    precision tinyint NOT NULL,
    scale tinyint NOT NULL,
    collation_name sysname,
    user_type_id int NOT NULL
);