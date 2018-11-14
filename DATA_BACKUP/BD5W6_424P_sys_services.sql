CREATE TABLE sys.services
(
    name sysname NOT NULL,
    service_id int NOT NULL,
    principal_id int,
    service_queue_id int NOT NULL
);
INSERT INTO sys.services (name, service_id, principal_id, service_queue_id) VALUES ('http://schemas.microsoft.com/SQL/Notifications/EventNotificationService', 2, 1, 2009058193);
INSERT INTO sys.services (name, service_id, principal_id, service_queue_id) VALUES ('http://schemas.microsoft.com/SQL/Notifications/QueryNotificationService', 1, 1, 1977058079);
INSERT INTO sys.services (name, service_id, principal_id, service_queue_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/ServiceBroker', 3, 1, 2041058307);