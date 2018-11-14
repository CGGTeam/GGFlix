CREATE TABLE sys.database_role_members
(
    role_principal_id int NOT NULL,
    member_principal_id int NOT NULL
);
INSERT INTO sys.database_role_members (role_principal_id, member_principal_id) VALUES (16384, 1);
INSERT INTO sys.database_role_members (role_principal_id, member_principal_id) VALUES (16384, 5);