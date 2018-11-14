CREATE TABLE sys.server_sql_modules
(
    object_id int NOT NULL,
    definition nvarchar(max),
    uses_ansi_nulls bit,
    uses_quoted_identifier bit,
    execute_as_principal_id int
);