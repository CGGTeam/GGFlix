CREATE TABLE sys.transmission_queue
(
    conversation_handle uniqueidentifier NOT NULL,
    to_service_name nvarchar(256),
    to_broker_instance nvarchar(128),
    from_service_name nvarchar(256),
    service_contract_name nvarchar(256),
    enqueue_time datetime NOT NULL,
    message_sequence_number bigint NOT NULL,
    message_type_name nvarchar(256),
    is_conversation_error bit NOT NULL,
    is_end_of_dialog bit NOT NULL,
    message_body varbinary(max),
    transmission_status nvarchar(4000),
    priority tinyint NOT NULL
);