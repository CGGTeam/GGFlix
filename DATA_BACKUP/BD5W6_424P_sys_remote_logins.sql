CREATE TABLE sys.remote_logins
(
    server_id int NOT NULL,
    remote_name sysname,
    local_principal_id int,
    modify_date datetime NOT NULL
);