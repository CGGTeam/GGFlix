CREATE TABLE sys.sysoledbusers
(
    rmtsrvid smallint,
    rmtloginame sysname,
    rmtpassword sysname,
    loginsid varbinary(85),
    status smallint,
    changedate datetime NOT NULL
);