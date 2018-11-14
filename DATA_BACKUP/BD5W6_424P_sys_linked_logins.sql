CREATE TABLE sys.linked_logins
(
    server_id int NOT NULL,
    local_principal_id int,
    uses_self_credential bit NOT NULL,
    remote_name sysname,
    modify_date datetime NOT NULL
);