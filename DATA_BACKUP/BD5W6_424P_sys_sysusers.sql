CREATE TABLE sys.sysusers
(
    uid smallint,
    status smallint,
    name sysname NOT NULL,
    sid varbinary(85),
    roles varbinary(2048),
    createdate datetime NOT NULL,
    updatedate datetime NOT NULL,
    altuid smallint,
    password varbinary(256),
    gid smallint,
    environ varchar(255),
    hasdbaccess int,
    islogin int,
    isntname int,
    isntgroup int,
    isntuser int,
    issqluser int,
    isaliased int,
    issqlrole int,
    isapprole int
);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (0, 0, 'public', 0x010500000000000904000000F6698AD2F9669343A2A3197A54FF564A, null, '2003-04-08 09:10:42.317', '2010-04-02 16:59:23.187', 1, null, 0, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (1, 0, 'dbo', 0x1512276FFDA5D449AC9701732145C923, null, '2003-04-08 09:10:42.287', '2018-10-31 14:19:25.523', null, null, 0, null, 1, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (2, 0, 'guest', 0x00, null, '2003-04-08 09:10:42.317', '2003-04-08 09:10:42.317', null, null, 0, null, 0, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (3, 0, 'INFORMATION_SCHEMA', null, null, '2010-04-02 16:59:22.910', '2010-04-02 16:59:22.910', null, null, 0, null, 0, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (4, 0, 'sys', null, null, '2010-04-02 16:59:22.910', '2010-04-02 16:59:22.910', null, null, 0, null, 0, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (5, 0, '5w6equipe424p', 0xA04B21E8B77E8B4695521F60A17A6671, null, '2018-10-31 14:39:51.187', '2018-10-31 14:39:51.187', null, null, 0, null, 1, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16384, 0, 'db_owner', 0x01050000000000090400000000000000000000000000000000400000, null, '2003-04-08 09:10:42.333', '2010-04-02 16:59:23.187', 1, null, 16384, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16385, 0, 'db_accessadmin', 0x01050000000000090400000000000000000000000000000001400000, null, '2003-04-08 09:10:42.333', '2010-04-02 16:59:23.187', 1, null, 16385, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16386, 0, 'db_securityadmin', 0x01050000000000090400000000000000000000000000000002400000, null, '2003-04-08 09:10:42.350', '2010-04-02 16:59:23.187', 1, null, 16386, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16387, 0, 'db_ddladmin', 0x01050000000000090400000000000000000000000000000003400000, null, '2003-04-08 09:10:42.350', '2010-04-02 16:59:23.187', 1, null, 16387, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16389, 0, 'db_backupoperator', 0x01050000000000090400000000000000000000000000000005400000, null, '2003-04-08 09:10:42.350', '2010-04-02 16:59:23.190', 1, null, 16389, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16390, 0, 'db_datareader', 0x01050000000000090400000000000000000000000000000006400000, null, '2003-04-08 09:10:42.363', '2010-04-02 16:59:23.190', 1, null, 16390, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16391, 0, 'db_datawriter', 0x01050000000000090400000000000000000000000000000007400000, null, '2003-04-08 09:10:42.363', '2010-04-02 16:59:23.190', 1, null, 16391, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16392, 0, 'db_denydatareader', 0x01050000000000090400000000000000000000000000000008400000, null, '2003-04-08 09:10:42.380', '2010-04-02 16:59:23.190', 1, null, 16392, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO sys.sysusers (uid, status, name, sid, roles, createdate, updatedate, altuid, password, gid, environ, hasdbaccess, islogin, isntname, isntgroup, isntuser, issqluser, isaliased, issqlrole, isapprole) VALUES (16393, 0, 'db_denydatawriter', 0x01050000000000090400000000000000000000000000000009400000, null, '2003-04-08 09:10:42.380', '2010-04-02 16:59:23.190', 1, null, 16393, null, 0, 0, 0, 0, 0, 0, 0, 1, 0);