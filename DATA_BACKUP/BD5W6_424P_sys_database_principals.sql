CREATE TABLE sys.database_principals
(
    name sysname NOT NULL,
    principal_id int NOT NULL,
    type char(1) NOT NULL,
    type_desc nvarchar(60),
    default_schema_name sysname,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    owning_principal_id int,
    sid varbinary(85),
    is_fixed_role bit NOT NULL
);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('public', 0, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.317', '2010-04-02 16:59:23.187', 1, 0x010500000000000904000000F6698AD2F9669343A2A3197A54FF564A, 0);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('dbo', 1, 'S', 'SQL_USER', 'dbo', '2003-04-08 09:10:42.287', '2018-10-31 14:19:25.523', null, 0x1512276FFDA5D449AC9701732145C923, 0);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('guest', 2, 'S', 'SQL_USER', 'guest', '2003-04-08 09:10:42.317', '2003-04-08 09:10:42.317', null, 0x00, 0);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('INFORMATION_SCHEMA', 3, 'S', 'SQL_USER', null, '2010-04-02 16:59:22.910', '2010-04-02 16:59:22.910', null, null, 0);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('sys', 4, 'S', 'SQL_USER', null, '2010-04-02 16:59:22.910', '2010-04-02 16:59:22.910', null, null, 0);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('5w6equipe424p', 5, 'S', 'SQL_USER', 'dbo', '2018-10-31 14:39:51.187', '2018-10-31 14:39:51.187', null, 0xA04B21E8B77E8B4695521F60A17A6671, 0);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_owner', 16384, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.333', '2010-04-02 16:59:23.187', 1, 0x01050000000000090400000000000000000000000000000000400000, 1);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_accessadmin', 16385, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.333', '2010-04-02 16:59:23.187', 1, 0x01050000000000090400000000000000000000000000000001400000, 1);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_securityadmin', 16386, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.350', '2010-04-02 16:59:23.187', 1, 0x01050000000000090400000000000000000000000000000002400000, 1);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_ddladmin', 16387, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.350', '2010-04-02 16:59:23.187', 1, 0x01050000000000090400000000000000000000000000000003400000, 1);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_backupoperator', 16389, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.350', '2010-04-02 16:59:23.190', 1, 0x01050000000000090400000000000000000000000000000005400000, 1);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_datareader', 16390, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.363', '2010-04-02 16:59:23.190', 1, 0x01050000000000090400000000000000000000000000000006400000, 1);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_datawriter', 16391, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.363', '2010-04-02 16:59:23.190', 1, 0x01050000000000090400000000000000000000000000000007400000, 1);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_denydatareader', 16392, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.380', '2010-04-02 16:59:23.190', 1, 0x01050000000000090400000000000000000000000000000008400000, 1);
INSERT INTO sys.database_principals (name, principal_id, type, type_desc, default_schema_name, create_date, modify_date, owning_principal_id, sid, is_fixed_role) VALUES ('db_denydatawriter', 16393, 'R', 'DATABASE_ROLE', null, '2003-04-08 09:10:42.380', '2010-04-02 16:59:23.190', 1, 0x01050000000000090400000000000000000000000000000009400000, 1);