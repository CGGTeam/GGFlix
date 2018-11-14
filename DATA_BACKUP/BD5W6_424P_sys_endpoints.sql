CREATE TABLE sys.endpoints
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
    is_admin_endpoint bit NOT NULL
);
INSERT INTO sys.endpoints (name, endpoint_id, principal_id, protocol, protocol_desc, type, type_desc, state, state_desc, is_admin_endpoint) VALUES ('TSQL Local Machine', 2, 1, 4, 'SHARED_MEMORY', 2, 'TSQL', 0, 'STARTED', 0);
INSERT INTO sys.endpoints (name, endpoint_id, principal_id, protocol, protocol_desc, type, type_desc, state, state_desc, is_admin_endpoint) VALUES ('TSQL Named Pipes', 3, 1, 3, 'NAMED_PIPES', 2, 'TSQL', 0, 'STARTED', 0);
INSERT INTO sys.endpoints (name, endpoint_id, principal_id, protocol, protocol_desc, type, type_desc, state, state_desc, is_admin_endpoint) VALUES ('TSQL Default TCP', 4, 1, 2, 'TCP', 2, 'TSQL', 0, 'STARTED', 0);
INSERT INTO sys.endpoints (name, endpoint_id, principal_id, protocol, protocol_desc, type, type_desc, state, state_desc, is_admin_endpoint) VALUES ('TSQL Default VIA', 5, 1, 5, 'VIA', 2, 'TSQL', 0, 'STARTED', 0);