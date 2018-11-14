CREATE TABLE sys.routes
(
    name sysname NOT NULL,
    route_id int NOT NULL,
    principal_id int,
    remote_service_name nvarchar(256),
    broker_instance nvarchar(128),
    lifetime datetime,
    address nvarchar(256),
    mirror_address nvarchar(256)
);
INSERT INTO sys.routes (name, route_id, principal_id, remote_service_name, broker_instance, lifetime, address, mirror_address) VALUES ('AutoCreatedLocal', 65536, 1, null, null, null, 'LOCAL', null);