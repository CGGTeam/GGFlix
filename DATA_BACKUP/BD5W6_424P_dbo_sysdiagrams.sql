CREATE TABLE BD5W6_424P.dbo.sysdiagrams
(
    name sysname NOT NULL,
    principal_id int NOT NULL,
    diagram_id int PRIMARY KEY NOT NULL IDENTITY,
    version int,
    definition varbinary(max)
);
CREATE UNIQUE INDEX UK_principal_name ON BD5W6_424P.dbo.sysdiagrams (principal_id, name);