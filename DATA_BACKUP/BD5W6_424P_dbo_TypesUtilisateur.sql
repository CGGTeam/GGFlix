CREATE TABLE BD5W6_424P.dbo.TypesUtilisateur
(
    TypeUtilisateur nchar(1) PRIMARY KEY NOT NULL,
    Description nvarchar(25) NOT NULL
);
INSERT INTO BD5W6_424P.dbo.TypesUtilisateur (TypeUtilisateur, Description) VALUES ('A', 'Administrateur');
INSERT INTO BD5W6_424P.dbo.TypesUtilisateur (TypeUtilisateur, Description) VALUES ('S', 'Super utilisateur');
INSERT INTO BD5W6_424P.dbo.TypesUtilisateur (TypeUtilisateur, Description) VALUES ('U', 'Utilisateur');