CREATE TABLE sys.service_contracts
(
    name sysname NOT NULL,
    service_contract_id int NOT NULL,
    principal_id int
);
INSERT INTO sys.service_contracts (name, service_contract_id, principal_id) VALUES ('DEFAULT', 6, 1);
INSERT INTO sys.service_contracts (name, service_contract_id, principal_id) VALUES ('http://schemas.microsoft.com/SQL/Notifications/PostEventNotification', 2, 1);
INSERT INTO sys.service_contracts (name, service_contract_id, principal_id) VALUES ('http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification', 1, 1);
INSERT INTO sys.service_contracts (name, service_contract_id, principal_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/BrokerConfigurationNotice', 3, 1);
INSERT INTO sys.service_contracts (name, service_contract_id, principal_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/ServiceDiagnostic', 5, 1);
INSERT INTO sys.service_contracts (name, service_contract_id, principal_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/ServiceEcho', 4, 1);