CREATE TABLE sys.numbered_procedure_parameters
(
    object_id int NOT NULL,
    procedure_number smallint NOT NULL,
    name sysname,
    parameter_id int NOT NULL,
    system_type_id tinyint NOT NULL,
    user_type_id int NOT NULL,
    max_length smallint NOT NULL,
    precision tinyint NOT NULL,
    scale tinyint NOT NULL,
    is_output bit NOT NULL,
    is_cursor_ref bit NOT NULL
);