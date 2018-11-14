CREATE TABLE sys.fulltext_catalogs
(
    fulltext_catalog_id int NOT NULL,
    name sysname NOT NULL,
    path nvarchar(260),
    is_default bit NOT NULL,
    is_accent_sensitivity_on bit NOT NULL,
    data_space_id int,
    file_id int,
    principal_id int,
    is_importing bit NOT NULL
);