CREATE TABLE sys.cryptographic_providers
(
    provider_id int NOT NULL,
    name sysname NOT NULL,
    guid uniqueidentifier,
    version nvarchar(24),
    dll_path nvarchar(520),
    is_enabled bit NOT NULL
);