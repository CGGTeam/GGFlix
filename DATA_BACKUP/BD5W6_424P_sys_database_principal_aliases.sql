CREATE TABLE sys.database_principal_aliases
(
    name sysname NOT NULL,
    sid varbinary(85),
    is_windows_sid bit NOT NULL,
    alias_principal_id int
);