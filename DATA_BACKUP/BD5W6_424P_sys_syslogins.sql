CREATE TABLE sys.syslogins
(
    sid varbinary(85),
    status smallint,
    createdate datetime NOT NULL,
    updatedate datetime NOT NULL,
    accdate datetime NOT NULL,
    totcpu int,
    totio int,
    spacelimit int,
    timelimit int,
    resultlimit int,
    name sysname NOT NULL,
    dbname sysname,
    password sysname,
    language sysname,
    denylogin int,
    hasaccess int,
    isntname int,
    isntgroup int,
    isntuser int,
    sysadmin int,
    securityadmin int,
    serveradmin int,
    setupadmin int,
    processadmin int,
    diskadmin int,
    dbcreator int,
    bulkadmin int,
    loginname sysname NOT NULL
);
INSERT INTO sys.syslogins (sid, status, createdate, updatedate, accdate, totcpu, totio, spacelimit, timelimit, resultlimit, name, dbname, password, language, denylogin, hasaccess, isntname, isntgroup, isntuser, sysadmin, securityadmin, serveradmin, setupadmin, processadmin, diskadmin, dbcreator, bulkadmin, loginname) VALUES (0x01, 9, '2003-04-08 09:10:35.460', '2011-08-19 08:54:06.367', '2003-04-08 09:10:35.460', 0, 0, 0, 0, 0, 'sa', 'master', null, 'us_english', 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'sa');
INSERT INTO sys.syslogins (sid, status, createdate, updatedate, accdate, totcpu, totio, spacelimit, timelimit, resultlimit, name, dbname, password, language, denylogin, hasaccess, isntname, isntgroup, isntuser, sysadmin, securityadmin, serveradmin, setupadmin, processadmin, diskadmin, dbcreator, bulkadmin, loginname) VALUES (0xA04B21E8B77E8B4695521F60A17A6671, 9, '2015-10-30 15:12:03.050', '2018-11-13 22:09:30.413', '2015-10-30 15:12:03.050', 0, 0, 0, 0, 0, '5w6equipe424p', 'master', null, 'us_english', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '5w6equipe424p');