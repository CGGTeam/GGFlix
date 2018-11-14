CREATE TABLE BD5W6_424P.dbo.FilmsSousTitres
(
    NoFilm int NOT NULL,
    NoSousTitre int NOT NULL,
    CONSTRAINT PK_FilmsSousTitres PRIMARY KEY (NoFilm, NoSousTitre),
    CONSTRAINT FK_FilmsSousTitres_Films FOREIGN KEY (NoFilm) REFERENCES BD5W6_424P.dbo.Films (NoFilm),
    CONSTRAINT FK_FilmsSousTitres_SousTitres FOREIGN KEY (NoSousTitre) REFERENCES BD5W6_424P.dbo.SousTitres (NoSousTitre)
);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181001, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181001, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181001, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181003, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181003, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181003, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181004, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181004, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181006, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181006, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181006, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181011, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181011, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181011, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181012, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181013, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181014, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181102, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181102, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181102, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181104, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181104, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181104, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181105, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181105, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181105, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181107, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181107, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181107, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181112, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181112, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181112, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181115, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181116, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181117, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181117, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181117, 3);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181201, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181201, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSousTitres (NoFilm, NoSousTitre) VALUES (181201, 3);