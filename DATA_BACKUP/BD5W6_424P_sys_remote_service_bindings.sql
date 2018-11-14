CREATE TABLE sys.remote_service_bindings
(
    name sysname NOT NULL,
    remote_service_binding_id int NOT NULL,
    principal_id int,
    remote_service_name nvarchar(256),
    service_contract_id int NOT NULL,
    remote_principal_id int,
    is_anonymous_on bit NOT NULL
);