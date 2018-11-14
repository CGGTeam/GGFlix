CREATE TABLE sys.symmetric_keys
(
    name sysname NOT NULL,
    principal_id int,
    symmetric_key_id int NOT NULL,
    key_length int NOT NULL,
    key_algorithm char(2) NOT NULL,
    algorithm_desc nvarchar(60),
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    key_guid uniqueidentifier,
    key_thumbprint sql_variant,
    provider_type nvarchar(60),
    cryptographic_provider_guid uniqueidentifier,
    cryptographic_provider_algid sql_variant
);