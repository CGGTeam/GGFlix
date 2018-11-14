CREATE TABLE sys.server_permissions
(
    class tinyint NOT NULL,
    class_desc nvarchar(60),
    major_id int NOT NULL,
    minor_id int NOT NULL,
    grantee_principal_id int NOT NULL,
    grantor_principal_id int NOT NULL,
    type char(4) NOT NULL,
    permission_name nvarchar(128),
    state char(1) NOT NULL,
    state_desc nvarchar(60)
);
INSERT INTO sys.server_permissions (class, class_desc, major_id, minor_id, grantee_principal_id, grantor_principal_id, type, permission_name, state, state_desc) VALUES (100, 'SERVER', 0, 0, 1, 1, 'COSQ', 'CONNECT SQL', 'G', 'GRANT');
INSERT INTO sys.server_permissions (class, class_desc, major_id, minor_id, grantee_principal_id, grantor_principal_id, type, permission_name, state, state_desc) VALUES (100, 'SERVER', 0, 0, 2, 1, 'VWDB', 'VIEW ANY DATABASE', 'G', 'GRANT');
INSERT INTO sys.server_permissions (class, class_desc, major_id, minor_id, grantee_principal_id, grantor_principal_id, type, permission_name, state, state_desc) VALUES (100, 'SERVER', 0, 0, 486, 1, 'COSQ', 'CONNECT SQL', 'G', 'GRANT');
INSERT INTO sys.server_permissions (class, class_desc, major_id, minor_id, grantee_principal_id, grantor_principal_id, type, permission_name, state, state_desc) VALUES (105, 'ENDPOINT', 2, 0, 2, 1, 'CO  ', 'CONNECT', 'G', 'GRANT');
INSERT INTO sys.server_permissions (class, class_desc, major_id, minor_id, grantee_principal_id, grantor_principal_id, type, permission_name, state, state_desc) VALUES (105, 'ENDPOINT', 3, 0, 2, 1, 'CO  ', 'CONNECT', 'G', 'GRANT');
INSERT INTO sys.server_permissions (class, class_desc, major_id, minor_id, grantee_principal_id, grantor_principal_id, type, permission_name, state, state_desc) VALUES (105, 'ENDPOINT', 4, 0, 2, 1, 'CO  ', 'CONNECT', 'G', 'GRANT');
INSERT INTO sys.server_permissions (class, class_desc, major_id, minor_id, grantee_principal_id, grantor_principal_id, type, permission_name, state, state_desc) VALUES (105, 'ENDPOINT', 5, 0, 2, 1, 'CO  ', 'CONNECT', 'G', 'GRANT');