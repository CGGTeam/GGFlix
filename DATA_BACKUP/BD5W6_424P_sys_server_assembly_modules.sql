CREATE TABLE sys.server_assembly_modules
(
    object_id int NOT NULL,
    assembly_id int NOT NULL,
    assembly_class nvarchar(128),
    assembly_method nvarchar(128),
    execute_as_principal_id int
);