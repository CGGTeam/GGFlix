CREATE TABLE sys.tcp_endpoints
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
    port int NOT NULL,
    is_dynamic_port bit NOT NULL,
    ip_address varchar(45)
);
INSERT INTO sys.tcp_endpoints (name, endpoint_id, principal_id, protocol, protocol_desc, type, type_desc, state, state_desc, is_admin_endpoint, port, is_dynamic_port, ip_address) VALUES ('TSQL Default TCP', 4, 1, 2, 'TCP', 2, 'TSQL', 0, 'STARTED', 0, 0, 1, null);