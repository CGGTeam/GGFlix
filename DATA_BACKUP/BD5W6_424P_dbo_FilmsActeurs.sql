CREATE TABLE BD5W6_424P.dbo.FilmsActeurs
(
    NoFilm int NOT NULL,
    NoActeur int NOT NULL,
    CONSTRAINT PK_FilmsActeurs PRIMARY KEY (NoFilm, NoActeur),
    CONSTRAINT FK_FilmsActeurs_Films FOREIGN KEY (NoFilm) REFERENCES BD5W6_424P.dbo.Films (NoFilm),
    CONSTRAINT FK_FilmsActeurs_Acteurs FOREIGN KEY (NoActeur) REFERENCES BD5W6_424P.dbo.Acteurs (NoActeur)
);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181001, 1);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181001, 2);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181001, 3);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181002, 4);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181002, 5);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181002, 6);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181003, 7);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181003, 8);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181003, 9);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181006, 10);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181006, 11);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181006, 12);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181008, 13);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181008, 14);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181008, 15);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181011, 16);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181011, 17);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181011, 18);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181012, 19);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181012, 20);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181012, 21);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181013, 22);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181013, 23);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181013, 24);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181014, 25);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181014, 26);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181102, 1);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181102, 27);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181102, 28);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181104, 29);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181105, 30);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181105, 31);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181105, 32);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181107, 33);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181107, 34);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181107, 35);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181112, 36);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181112, 37);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181112, 38);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181114, 39);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181114, 40);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181118, 4);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181118, 5);
INSERT INTO BD5W6_424P.dbo.FilmsActeurs (NoFilm, NoActeur) VALUES (181118, 6);