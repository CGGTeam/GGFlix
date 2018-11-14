CREATE TABLE sys.sysfilegroups
(
    groupid smallint,
    allocpolicy smallint,
    status int,
    groupname sysname NOT NULL
);
INSERT INTO sys.sysfilegroups (groupid, allocpolicy, status, groupname) VALUES (1, 0, 16, 'PRIMARY');