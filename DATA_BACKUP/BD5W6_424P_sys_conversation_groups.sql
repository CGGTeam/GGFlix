CREATE TABLE sys.conversation_groups
(
    conversation_group_id uniqueidentifier NOT NULL,
    service_id int NOT NULL,
    is_system bit
);