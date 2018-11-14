CREATE TABLE sys.dm_qn_subscriptions
(
    id int NOT NULL,
    database_id int NOT NULL,
    sid varbinary(85) NOT NULL,
    object_id int NOT NULL,
    created datetime NOT NULL,
    timeout int NOT NULL,
    status int NOT NULL
);