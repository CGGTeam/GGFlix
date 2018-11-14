CREATE TABLE sys.server_role_members
(
    role_principal_id int NOT NULL,
    member_principal_id int NOT NULL
);
INSERT INTO sys.server_role_members (role_principal_id, member_principal_id) VALUES (3, 1);