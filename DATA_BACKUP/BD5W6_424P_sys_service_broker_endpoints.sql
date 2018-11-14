CREATE TABLE sys.service_broker_endpoints
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
    is_message_forwarding_enabled bit NOT NULL,
    message_forwarding_size int NOT NULL,
    connection_auth tinyint NOT NULL,
    connection_auth_desc nvarchar(60),
    certificate_id int NOT NULL,
    encryption_algorithm tinyint NOT NULL,
    encryption_algorithm_desc nvarchar(60)
);