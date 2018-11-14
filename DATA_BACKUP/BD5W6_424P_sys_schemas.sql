CREATE TABLE sys.schemas
(
    name sysname NOT NULL,
    schema_id int NOT NULL,
    principal_id int
);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('dbo', 1, 1);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('guest', 2, 2);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('INFORMATION_SCHEMA', 3, 3);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('sys', 4, 4);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_owner', 16384, 16384);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_accessadmin', 16385, 16385);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_securityadmin', 16386, 16386);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_ddladmin', 16387, 16387);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_backupoperator', 16389, 16389);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_datareader', 16390, 16390);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_datawriter', 16391, 16391);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_denydatareader', 16392, 16392);
INSERT INTO sys.schemas (name, schema_id, principal_id) VALUES ('db_denydatawriter', 16393, 16393);