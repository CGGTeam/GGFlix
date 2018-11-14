CREATE TABLE BD5W6_424P.dbo.Formats
(
    NoFormat int PRIMARY KEY NOT NULL,
    Description nvarchar(50) NOT NULL
);
INSERT INTO BD5W6_424P.dbo.Formats (NoFormat, Description) VALUES (1, 'Blu-Ray');
INSERT INTO BD5W6_424P.dbo.Formats (NoFormat, Description) VALUES (2, 'Normal');
INSERT INTO BD5W6_424P.dbo.Formats (NoFormat, Description) VALUES (3, 'Panoramique');