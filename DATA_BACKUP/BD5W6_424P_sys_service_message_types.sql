CREATE TABLE sys.service_message_types
(
    name sysname NOT NULL,
    message_type_id int NOT NULL,
    principal_id int,
    validation char(2) NOT NULL,
    validation_desc nvarchar(60),
    xml_collection_id int
);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/Error', 1, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog', 2, 1, 'E ', 'EMPTY', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/Notifications/QueryNotification', 3, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/Notifications/EventNotification', 4, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer', 5, 1, 'E ', 'EMPTY', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/BrokerConfigurationNotice/MissingRoute', 6, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/BrokerConfigurationNotice/FailedRoute', 7, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/BrokerConfigurationNotice/MissingRemoteServiceBinding', 8, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/BrokerConfigurationNotice/FailedRemoteServiceBinding', 9, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/ServiceEcho/Echo', 10, 1, 'N ', 'BINARY', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/ServiceDiagnostic/Query', 11, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/ServiceDiagnostic/Status', 12, 1, 'X ', 'XML', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('http://schemas.microsoft.com/SQL/ServiceBroker/ServiceDiagnostic/Description', 13, 1, 'N ', 'BINARY', null);
INSERT INTO sys.service_message_types (name, message_type_id, principal_id, validation, validation_desc, xml_collection_id) VALUES ('DEFAULT', 14, 1, 'N ', 'BINARY', null);