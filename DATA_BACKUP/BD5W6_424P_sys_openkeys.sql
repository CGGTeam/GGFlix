CREATE TABLE sys.openkeys
(
    database_id int,
    database_name nvarchar(128),
    key_id int,
    key_name nvarchar(128),
    key_guid uniqueidentifier,
    opened_date datetime,
    status smallint
);