CREATE TABLE sys.login_token
(
    principal_id int,
    sid varbinary(85),
    name nvarchar(128),
    type nvarchar(128),
    usage nvarchar(128)
);
INSERT INTO sys.login_token (principal_id, sid, name, type, usage) VALUES (486, 0xA04B21E8B77E8B4695521F60A17A6671, '5w6equipe424p', 'SQL LOGIN', 'GRANT OR DENY');
INSERT INTO sys.login_token (principal_id, sid, name, type, usage) VALUES (2, 0x02, 'public', 'SERVER ROLE', 'GRANT OR DENY');