CREATE TABLE sys.via_endpoints
(
    name sysname NOT NULL,
    endpoint_id int NOT NULL,
    principal_id int,
    protocol tinyint NOT NULL,
    protocol_desc nvarchar(60),
    type tinyint NOT NULL,
    type_desc nvarchar(60),
    state tinyint,
    state_desc nvarchar(60),
    is_admin_endpoint bit NOT NULL,
    discriminator nvarchar(128)
);
INSERT INTO sys.via_endpoints (name, endpoint_id, principal_id, protocol, protocol_desc, type, type_desc, state, state_desc, is_admin_endpoint, discriminator) VALUES ('TSQL Default VIA', 5, 1, 5, 'VIA', 2, 'TSQL', 0, 'STARTED', 0, null);