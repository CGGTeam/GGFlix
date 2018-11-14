CREATE TABLE sys.user_token
(
    principal_id int,
    sid varbinary(85),
    name nvarchar(128),
    type nvarchar(128),
    usage nvarchar(128)
);
INSERT INTO sys.user_token (principal_id, sid, name, type, usage) VALUES (5, 0xA04B21E8B77E8B4695521F60A17A6671, '5w6equipe424p', 'SQL USER', 'GRANT OR DENY');
INSERT INTO sys.user_token (principal_id, sid, name, type, usage) VALUES (0, 0x010500000000000904000000F6698AD2F9669343A2A3197A54FF564A, 'public', 'ROLE', 'GRANT OR DENY');
INSERT INTO sys.user_token (principal_id, sid, name, type, usage) VALUES (16384, 0x01050000000000090400000000000000000000000000000000400000, 'db_owner', 'ROLE', 'GRANT OR DENY');