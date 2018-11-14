CREATE TABLE sys.conversation_priorities
(
    priority_id int NOT NULL,
    name sysname NOT NULL,
    service_contract_id int,
    local_service_id int,
    remote_service_name nvarchar(256),
    priority tinyint NOT NULL
);