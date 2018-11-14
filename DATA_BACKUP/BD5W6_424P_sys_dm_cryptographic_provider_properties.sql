CREATE TABLE sys.dm_cryptographic_provider_properties
(
    provider_id int,
    guid uniqueidentifier,
    provider_version nvarchar(128),
    sqlcrypt_version nvarchar(128),
    friendly_name nvarchar(1024),
    authentication_type nvarchar(128),
    symmetric_key_support tinyint,
    symmetric_key_persistance tinyint,
    symmetric_key_export tinyint,
    symmetric_key_import tinyint,
    asymmetric_key_support tinyint,
    asymmetric_key_persistance tinyint,
    asymmetric_key_export tinyint,
    asymmetric_key_import tinyint
);