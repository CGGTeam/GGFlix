CREATE TABLE sys.partition_functions
(
    name sysname NOT NULL,
    function_id int NOT NULL,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    fanout int NOT NULL,
    boundary_value_on_right bit NOT NULL,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL
);