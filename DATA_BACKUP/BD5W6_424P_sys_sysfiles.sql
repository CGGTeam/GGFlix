CREATE TABLE sys.sysfiles
(
    fileid smallint,
    groupid smallint,
    size int NOT NULL,
    maxsize int NOT NULL,
    growth int NOT NULL,
    status int,
    perf int,
    name sysname NOT NULL,
    filename nvarchar(260) NOT NULL
);
INSERT INTO sys.sysfiles (fileid, groupid, size, maxsize, growth, status, perf, name, filename) VALUES (1, 1, 384, -1, 128, 2, 0, 'BD5W6_424P', 'D:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLINFO\MSSQL\DATA\BD5W6_424P.mdf');
INSERT INTO sys.sysfiles (fileid, groupid, size, maxsize, growth, status, perf, name, filename) VALUES (2, 0, 128, 268435456, 10, 1048642, 0, 'BD5W6_424P_log', 'D:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLINFO\MSSQL\DATA\BD5W6_424P_log.ldf');