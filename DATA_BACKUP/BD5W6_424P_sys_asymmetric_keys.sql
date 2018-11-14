CREATE TABLE sys.asymmetric_keys
(
    name sysname NOT NULL,
    principal_id int,
    asymmetric_key_id int NOT NULL,
    pvt_key_encryption_type char(2) NOT NULL,
    pvt_key_encryption_type_desc nvarchar(60),
    thumbprint varbinary(32) NOT NULL,
    algorithm char(2) NOT NULL,
    algorithm_desc nvarchar(60),
    key_length int NOT NULL,
    sid varbinary(85),
    string_sid nvarchar(128),
    public_key varbinary(max) NOT NULL,
    attested_by nvarchar(260),
    provider_type nvarchar(60),
    cryptographic_provider_guid uniqueidentifier,
    cryptographic_provider_algid sql_variant
);