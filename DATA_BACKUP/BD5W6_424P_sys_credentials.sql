CREATE TABLE sys.credentials
(
    credential_id int NOT NULL,
    name sysname NOT NULL,
    credential_identity nvarchar(4000),
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    target_type nvarchar(60),
    target_id int
);