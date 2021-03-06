CREATE TABLE sys.systypes
(
    name sysname NOT NULL,
    xtype tinyint NOT NULL,
    status tinyint,
    xusertype smallint,
    length smallint NOT NULL,
    xprec tinyint NOT NULL,
    xscale tinyint NOT NULL,
    tdefault int NOT NULL,
    domain int NOT NULL,
    uid smallint,
    reserved smallint,
    collationid int,
    usertype smallint,
    variable bit NOT NULL,
    allownulls bit,
    type tinyint NOT NULL,
    printfmt varchar(255),
    prec smallint,
    scale tinyint,
    collation sysname
);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('image', 34, 0, 34, 16, 0, 0, 0, 0, 4, 0, null, 20, 0, 1, 34, null, null, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('text', 35, 0, 35, 16, 0, 0, 0, 0, 4, 0, 53259, 19, 0, 1, 35, null, null, null, 'French_CI_AS');
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('uniqueidentifier', 36, 0, 36, 16, 0, 0, 0, 0, 4, 0, null, 0, 0, 1, 37, null, 16, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('date', 40, 0, 40, 3, 10, 0, 0, 0, 4, 0, null, 0, 0, 1, 0, null, 10, 0, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('time', 41, 0, 41, 5, 16, 7, 0, 0, 4, 0, null, 0, 0, 1, 0, null, 16, 7, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('datetime2', 42, 0, 42, 8, 27, 7, 0, 0, 4, 0, null, 0, 0, 1, 0, null, 27, 7, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('datetimeoffset', 43, 0, 43, 10, 34, 7, 0, 0, 4, 0, null, 0, 0, 1, 0, null, 34, 7, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('tinyint', 48, 0, 48, 1, 3, 0, 0, 0, 4, 0, null, 5, 0, 1, 48, null, 3, 0, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('smallint', 52, 0, 52, 2, 5, 0, 0, 0, 4, 0, null, 6, 0, 1, 52, null, 5, 0, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('int', 56, 0, 56, 4, 10, 0, 0, 0, 4, 0, null, 7, 0, 1, 56, null, 10, 0, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('smalldatetime', 58, 0, 58, 4, 16, 0, 0, 0, 4, 0, null, 22, 0, 1, 58, null, 16, 0, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('real', 59, 0, 59, 4, 24, 0, 0, 0, 4, 0, null, 23, 0, 1, 59, null, 24, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('money', 60, 0, 60, 8, 19, 4, 0, 0, 4, 0, null, 11, 0, 1, 60, null, 19, 4, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('datetime', 61, 0, 61, 8, 23, 3, 0, 0, 4, 0, null, 12, 0, 1, 61, null, 23, 3, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('float', 62, 0, 62, 8, 53, 0, 0, 0, 4, 0, null, 8, 0, 1, 62, null, 53, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('sql_variant', 98, 0, 98, 8016, 0, 0, 0, 0, 4, 0, null, 0, 0, 1, 39, null, 0, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('ntext', 99, 0, 99, 16, 0, 0, 0, 0, 4, 0, 53259, 0, 0, 1, 35, null, null, null, 'French_CI_AS');
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('bit', 104, 0, 104, 1, 1, 0, 0, 0, 4, 0, null, 16, 0, 1, 50, null, 1, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('decimal', 106, 0, 106, 17, 38, 38, 0, 0, 4, 0, null, 24, 0, 1, 55, null, 38, 38, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('numeric', 108, 0, 108, 17, 38, 38, 0, 0, 4, 0, null, 10, 0, 1, 63, null, 38, 38, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('smallmoney', 122, 0, 122, 4, 10, 4, 0, 0, 4, 0, null, 21, 0, 1, 122, null, 10, 4, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('bigint', 127, 0, 127, 8, 19, 0, 0, 0, 4, 0, null, 0, 0, 1, 63, null, 19, 0, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('hierarchyid', 240, 0, 128, 892, 0, 0, 0, 0, 4, 0, null, 0, 0, 1, 0, null, 892, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('geometry', 240, 0, 129, -1, 0, 0, 0, 0, 4, 0, null, 0, 0, 1, 0, null, -1, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('geography', 240, 0, 130, -1, 0, 0, 0, 0, 4, 0, null, 0, 0, 1, 0, null, -1, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('varbinary', 165, 0, 165, 8000, 0, 0, 0, 0, 4, 0, null, 4, 1, 1, 37, null, 8000, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('varchar', 167, 0, 167, 8000, 0, 0, 0, 0, 4, 0, 53259, 2, 1, 1, 39, null, 8000, null, 'French_CI_AS');
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('binary', 173, 0, 173, 8000, 0, 0, 0, 0, 4, 0, null, 3, 0, 1, 45, null, 8000, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('char', 175, 0, 175, 8000, 0, 0, 0, 0, 4, 0, 53259, 1, 0, 1, 47, null, 8000, null, 'French_CI_AS');
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('timestamp', 189, 1, 189, 8, 0, 0, 0, 0, 4, 0, null, 80, 0, 0, 45, null, 8, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('nvarchar', 231, 0, 231, 8000, 0, 0, 0, 0, 4, 0, 53259, 0, 1, 1, 39, null, 4000, null, 'French_CI_AS');
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('nchar', 239, 0, 239, 8000, 0, 0, 0, 0, 4, 0, 53259, 0, 0, 1, 47, null, 4000, null, 'French_CI_AS');
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('xml', 241, 0, 241, -1, 0, 0, 0, 0, 4, 0, null, 0, 0, 1, 0, null, -1, null, null);
INSERT INTO sys.systypes (name, xtype, status, xusertype, length, xprec, xscale, tdefault, domain, uid, reserved, collationid, usertype, variable, allownulls, type, printfmt, prec, scale, collation) VALUES ('sysname', 231, 1, 256, 256, 0, 0, 0, 0, 4, 0, 53259, 18, 1, 0, 39, null, 128, null, 'French_CI_AS');