CREATE TABLE sys.server_event_notifications
(
    name sysname NOT NULL,
    object_id int NOT NULL,
    parent_class tinyint NOT NULL,
    parent_class_desc nvarchar(60),
    parent_id int NOT NULL,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    service_name nvarchar(256),
    broker_instance nvarchar(128),
    creator_sid varbinary(85),
    principal_id int
);