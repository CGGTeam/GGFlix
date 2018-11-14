CREATE TABLE sys.server_principals
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
    credential_id int
);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('sa', 1, 0x01, 'S', 'SQL_LOGIN', 1, '2003-04-08 09:10:35.460', '2011-08-19 08:54:06.367', 'master', 'us_english', null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('public', 2, 0x02, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('sysadmin', 3, 0x03, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('securityadmin', 4, 0x04, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('serveradmin', 5, 0x05, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('setupadmin', 6, 0x06, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('processadmin', 7, 0x07, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('diskadmin', 8, 0x08, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('dbcreator', 9, 0x09, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('bulkadmin', 10, 0x0A, 'R', 'SERVER_ROLE', 0, '2010-04-02 16:59:21.400', '2010-04-02 16:59:21.400', null, null, null);
INSERT INTO sys.server_principals (name, principal_id, sid, type, type_desc, is_disabled, create_date, modify_date, default_database_name, default_language_name, credential_id) VALUES ('5w6equipe424p', 486, 0xA04B21E8B77E8B4695521F60A17A6671, 'S', 'SQL_LOGIN', 0, '2015-10-30 15:12:03.050', '2018-11-13 22:09:30.413', 'master', 'us_english', null);