CREATE TABLE sys.sysdevices
(
    name sysname NOT NULL,
    size int,
    low int,
    high int,
    status smallint,
    cntrltype smallint,
    phyname nvarchar(260)
);