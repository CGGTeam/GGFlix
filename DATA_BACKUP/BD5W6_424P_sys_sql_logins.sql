CREATE TABLE sys.sql_logins
(
    name sysname NOT NULL,
    principal_id int NOT NULL,
    sid varbinary(85),
    type char(1) NOT NULL,
    type_desc nvarchar(60),
    is_disabled bit,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    default_database_name sysname,
    default_language_name sysname,
    credential_id int,
    is_policy_checked bit,
    is_expiration_checked bit,
    password_hash varbinary(256)
);
INSERT INTO sys.sql_logins (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id, is_policy_checked, is_expiration_checked, password_hash) VALUES ('sa', 1, 0x01, 'S', 'SQL_LOGIN', 1, '2003-04-08 09:10:35.460', '2011-08-19 08:54:06.367', 'master', 'us_english', null, 1, 0, null);
INSERT INTO sys.sql_logins (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id, is_policy_checked, is_expiration_checked, password_hash) VALUES ('5w6equipe424p', 486, 0xA04B21E8B77E8B4695521F60A17A6671, 'S', 'SQL_LOGIN', 0, '2015-10-30 15:12:03.050', '2018-11-13 22:09:30.413', 'master', 'us_english', null, 1, 0, null);