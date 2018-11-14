CREATE TABLE sys.partition_schemes
(
    name sysname NOT NULL,
    data_space_id int NOT NULL,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    is_default bit,
    function_id int NOT NULL
);