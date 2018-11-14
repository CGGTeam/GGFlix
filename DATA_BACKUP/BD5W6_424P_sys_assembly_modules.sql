CREATE TABLE sys.assembly_modules
(
    object_id int NOT NULL,
    assembly_id int NOT NULL,
    assembly_class nvarchar(128),
    assembly_method nvarchar(128),
    null_on_null_input bit,
    execute_as_principal_id int
);