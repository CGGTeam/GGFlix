CREATE TABLE sys.fulltext_stoplists
(
    stoplist_id int NOT NULL,
    name sysname NOT NULL,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    principal_id int
);