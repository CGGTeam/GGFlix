CREATE TABLE sys.sysremotelogins
(
    remoteserverid smallint,
    remoteusername sysname,
    status smallint,
    sid varbinary(85),
    changedate datetime NOT NULL
);