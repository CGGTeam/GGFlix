CREATE TABLE sys.service_queues
(
    name sysname NOT NULL,
    object_id int NOT NULL,
    principal_id int,
    schema_id int NOT NULL,
    parent_object_id int NOT NULL,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    is_ms_shipped bit NOT NULL,
    is_published bit NOT NULL,
    is_schema_published bit NOT NULL,
    max_readers smallint,
    activation_procedure nvarchar(776),
    execute_as_principal_id int,
    is_activation_enabled bit NOT NULL,
    is_receive_enabled bit NOT NULL,
    is_enqueue_enabled bit NOT NULL,
    is_retention_enabled bit NOT NULL,
    is_poison_message_handling_enabled bit
);
INSERT INTO sys.service_queues (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, max_readers, activation_procedure, execute_as_principal_id, is_activation_enabled, is_receive_enabled, is_enqueue_enabled, is_retention_enabled, is_poison_message_handling_enabled) VALUES ('QueryNotificationErrorsQueue', 1977058079, null, 1, 0, 'SQ', 'SERVICE_QUEUE', '2010-04-02 16:59:23.173', '2010-04-02 16:59:23.567', 1, 0, 0, 0, null, null, 0, 1, 1, 0, 1);
INSERT INTO sys.service_queues (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, max_readers, activation_procedure, execute_as_principal_id, is_activation_enabled, is_receive_enabled, is_enqueue_enabled, is_retention_enabled, is_poison_message_handling_enabled) VALUES ('EventNotificationErrorsQueue', 2009058193, null, 1, 0, 'SQ', 'SERVICE_QUEUE', '2010-04-02 16:59:23.180', '2010-04-02 16:59:23.567', 1, 0, 0, 0, null, null, 0, 1, 1, 0, 1);
INSERT INTO sys.service_queues (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, max_readers, activation_procedure, execute_as_principal_id, is_activation_enabled, is_receive_enabled, is_enqueue_enabled, is_retention_enabled, is_poison_message_handling_enabled) VALUES ('ServiceBrokerQueue', 2041058307, null, 1, 0, 'SQ', 'SERVICE_QUEUE', '2010-04-02 16:59:23.180', '2010-04-02 16:59:23.570', 1, 0, 0, 0, null, null, 0, 1, 1, 0, 1);