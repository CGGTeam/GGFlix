USE [master]
GO
/****** Object:  Database [BD5W6_424P]    Script Date: 2018-11-14 12:32:47 PM ******/
CREATE DATABASE [BD5W6_424P] ON  PRIMARY 
( NAME = N'BD5W6_424P', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLINFO\MSSQL\DATA\BD5W6_424P.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BD5W6_424P_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLINFO\MSSQL\DATA\BD5W6_424P_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BD5W6_424P] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD5W6_424P].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD5W6_424P] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD5W6_424P] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD5W6_424P] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD5W6_424P] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD5W6_424P] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD5W6_424P] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD5W6_424P] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD5W6_424P] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD5W6_424P] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD5W6_424P] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD5W6_424P] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD5W6_424P] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD5W6_424P] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD5W6_424P] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD5W6_424P] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD5W6_424P] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD5W6_424P] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD5W6_424P] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD5W6_424P] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD5W6_424P] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD5W6_424P] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD5W6_424P] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD5W6_424P] SET RECOVERY FULL 
GO
ALTER DATABASE [BD5W6_424P] SET  MULTI_USER 
GO
ALTER DATABASE [BD5W6_424P] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD5W6_424P] SET DB_CHAINING OFF 
GO
USE [BD5W6_424P]
GO
/****** Object:  User [5w6equipe424p]    Script Date: 2018-11-14 12:32:48 PM ******/
CREATE USER [5w6equipe424p] FOR LOGIN [5w6equipe424p] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [5w6equipe424p]
GO
/****** Object:  Table [dbo].[Acteurs]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acteurs](
	[NoActeur] [int] NOT NULL,
	[Nom] [nvarchar](50) NOT NULL,
	[Sexe] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Acteurs] PRIMARY KEY CLUSTERED 
(
	[NoActeur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[NoCategorie] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[NoCategorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpruntsFilms]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpruntsFilms](
	[NoExemplaire] [int] NOT NULL,
	[NoUtilisateur] [int] NOT NULL,
	[DateEmprunt] [datetime] NOT NULL,
 CONSTRAINT [PK_EmpruntsFilms] PRIMARY KEY CLUSTERED 
(
	[NoExemplaire] ASC,
	[NoUtilisateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exemplaires]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exemplaires](
	[NoExemplaire] [int] NOT NULL,
	[NoUtilisateurProprietaire] [int] NOT NULL,
 CONSTRAINT [PK_Exemplaires_1] PRIMARY KEY CLUSTERED 
(
	[NoExemplaire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Films]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films](
	[NoFilm] [int] NOT NULL,
	[AnneeSortie] [int] NULL,
	[Categorie] [int] NULL,
	[Format] [int] NULL,
	[DateMAJ] [datetime] NOT NULL,
	[NoUtilisateurMAJ] [int] NOT NULL,
	[Resume] [nvarchar](500) NULL,
	[DureeMinutes] [int] NULL,
	[FilmOriginal] [bit] NULL,
	[ImagePochette] [nvarchar](50) NULL,
	[NbDisques] [int] NULL,
	[TitreFrancais] [nvarchar](50) NOT NULL,
	[TitreOriginal] [nvarchar](50) NULL,
	[VersionEtendue] [bit] NULL,
	[NoRealisateur] [int] NULL,
	[NoProducteur] [int] NULL,
	[XTra] [nvarchar](255) NULL,
 CONSTRAINT [PK_Films] PRIMARY KEY CLUSTERED 
(
	[NoFilm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmsActeurs]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmsActeurs](
	[NoFilm] [int] NOT NULL,
	[NoActeur] [int] NOT NULL,
 CONSTRAINT [PK_FilmsActeurs] PRIMARY KEY CLUSTERED 
(
	[NoFilm] ASC,
	[NoActeur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmsLangues]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmsLangues](
	[NoFilm] [int] NOT NULL,
	[NoLangue] [int] NOT NULL,
 CONSTRAINT [PK_FilmsLangues] PRIMARY KEY CLUSTERED 
(
	[NoFilm] ASC,
	[NoLangue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmsSousTitres]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmsSousTitres](
	[NoFilm] [int] NOT NULL,
	[NoSousTitre] [int] NOT NULL,
 CONSTRAINT [PK_FilmsSousTitres] PRIMARY KEY CLUSTERED 
(
	[NoFilm] ASC,
	[NoSousTitre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmsSupplements]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmsSupplements](
	[NoFilm] [int] NOT NULL,
	[NoSupplement] [int] NOT NULL,
 CONSTRAINT [PK_FilmsSupplements] PRIMARY KEY CLUSTERED 
(
	[NoFilm] ASC,
	[NoSupplement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formats]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formats](
	[NoFormat] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Formats] PRIMARY KEY CLUSTERED 
(
	[NoFormat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Langues]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Langues](
	[NoLangue] [int] NOT NULL,
	[Langue] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Langues] PRIMARY KEY CLUSTERED 
(
	[NoLangue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preferences]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preferences](
	[NoPreference] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Preferences] PRIMARY KEY CLUSTERED 
(
	[NoPreference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producteurs]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producteurs](
	[NoProducteur] [int] NOT NULL,
	[Nom] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Producteurs] PRIMARY KEY CLUSTERED 
(
	[NoProducteur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Realisateurs]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Realisateurs](
	[NoRealisateur] [int] NOT NULL,
	[Nom] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Realisateurs] PRIMARY KEY CLUSTERED 
(
	[NoRealisateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SousTitres]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SousTitres](
	[NoSousTitre] [int] NOT NULL,
	[LangueSousTitre] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_SousTitres] PRIMARY KEY CLUSTERED 
(
	[NoSousTitre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplements]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplements](
	[NoSupplement] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplements] PRIMARY KEY CLUSTERED 
(
	[NoSupplement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesUtilisateur]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesUtilisateur](
	[TypeUtilisateur] [nchar](1) NOT NULL,
	[Description] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_TypesUtilisateur] PRIMARY KEY CLUSTERED 
(
	[TypeUtilisateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilisateurs]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilisateurs](
	[NoUtilisateur] [int] NOT NULL,
	[NomUtilisateur] [nvarchar](10) NOT NULL,
	[Courriel] [nvarchar](50) NOT NULL,
	[MotPasse] [int] NOT NULL,
	[TypeUtilisateur] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Utilisateurs] PRIMARY KEY CLUSTERED 
(
	[NoUtilisateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UtilisateursPreferences]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UtilisateursPreferences](
	[NoUtilisateur] [int] NOT NULL,
	[NoPreference] [int] NOT NULL,
 CONSTRAINT [PK_UtilisateursPreferences] PRIMARY KEY CLUSTERED 
(
	[NoUtilisateur] ASC,
	[NoPreference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValeursPreferences]    Script Date: 2018-11-14 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValeursPreferences](
	[NoUtilisateur] [int] NOT NULL,
	[NoPreference] [int] NOT NULL,
	[Valeur] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ValeursPreferences] PRIMARY KEY CLUSTERED 
(
	[NoUtilisateur] ASC,
	[NoPreference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmpruntsFilms]  WITH CHECK ADD  CONSTRAINT [FK_EmpruntsFilms_Exemplaires1] FOREIGN KEY([NoExemplaire])
REFERENCES [dbo].[Exemplaires] ([NoExemplaire])
GO
ALTER TABLE [dbo].[EmpruntsFilms] CHECK CONSTRAINT [FK_EmpruntsFilms_Exemplaires1]
GO
ALTER TABLE [dbo].[EmpruntsFilms]  WITH CHECK ADD  CONSTRAINT [FK_EmpruntsFilms_Utilisateurs1] FOREIGN KEY([NoUtilisateur])
REFERENCES [dbo].[Utilisateurs] ([NoUtilisateur])
GO
ALTER TABLE [dbo].[EmpruntsFilms] CHECK CONSTRAINT [FK_EmpruntsFilms_Utilisateurs1]
GO
ALTER TABLE [dbo].[Exemplaires]  WITH CHECK ADD  CONSTRAINT [FK_Exemplaires_Utilisateurs2] FOREIGN KEY([NoUtilisateurProprietaire])
REFERENCES [dbo].[Utilisateurs] ([NoUtilisateur])
GO
ALTER TABLE [dbo].[Exemplaires] CHECK CONSTRAINT [FK_Exemplaires_Utilisateurs2]
GO
ALTER TABLE [dbo].[Films]  WITH CHECK ADD  CONSTRAINT [FK_Films_Categories] FOREIGN KEY([Categorie])
REFERENCES [dbo].[Categories] ([NoCategorie])
GO
ALTER TABLE [dbo].[Films] CHECK CONSTRAINT [FK_Films_Categories]
GO
ALTER TABLE [dbo].[Films]  WITH CHECK ADD  CONSTRAINT [FK_Films_Formats] FOREIGN KEY([Format])
REFERENCES [dbo].[Formats] ([NoFormat])
GO
ALTER TABLE [dbo].[Films] CHECK CONSTRAINT [FK_Films_Formats]
GO
ALTER TABLE [dbo].[Films]  WITH CHECK ADD  CONSTRAINT [FK_Films_Producteurs] FOREIGN KEY([NoProducteur])
REFERENCES [dbo].[Producteurs] ([NoProducteur])
GO
ALTER TABLE [dbo].[Films] CHECK CONSTRAINT [FK_Films_Producteurs]
GO
ALTER TABLE [dbo].[Films]  WITH CHECK ADD  CONSTRAINT [FK_Films_Realisateurs] FOREIGN KEY([NoRealisateur])
REFERENCES [dbo].[Realisateurs] ([NoRealisateur])
GO
ALTER TABLE [dbo].[Films] CHECK CONSTRAINT [FK_Films_Realisateurs]
GO
ALTER TABLE [dbo].[Films]  WITH CHECK ADD  CONSTRAINT [FK_Films_Utilisateurs] FOREIGN KEY([NoUtilisateurMAJ])
REFERENCES [dbo].[Utilisateurs] ([NoUtilisateur])
GO
ALTER TABLE [dbo].[Films] CHECK CONSTRAINT [FK_Films_Utilisateurs]
GO
ALTER TABLE [dbo].[FilmsActeurs]  WITH CHECK ADD  CONSTRAINT [FK_FilmsActeurs_Acteurs] FOREIGN KEY([NoActeur])
REFERENCES [dbo].[Acteurs] ([NoActeur])
GO
ALTER TABLE [dbo].[FilmsActeurs] CHECK CONSTRAINT [FK_FilmsActeurs_Acteurs]
GO
ALTER TABLE [dbo].[FilmsActeurs]  WITH CHECK ADD  CONSTRAINT [FK_FilmsActeurs_Films] FOREIGN KEY([NoFilm])
REFERENCES [dbo].[Films] ([NoFilm])
GO
ALTER TABLE [dbo].[FilmsActeurs] CHECK CONSTRAINT [FK_FilmsActeurs_Films]
GO
ALTER TABLE [dbo].[FilmsLangues]  WITH CHECK ADD  CONSTRAINT [FK_FilmsLangues_Films] FOREIGN KEY([NoFilm])
REFERENCES [dbo].[Films] ([NoFilm])
GO
ALTER TABLE [dbo].[FilmsLangues] CHECK CONSTRAINT [FK_FilmsLangues_Films]
GO
ALTER TABLE [dbo].[FilmsLangues]  WITH CHECK ADD  CONSTRAINT [FK_FilmsLangues_Langues] FOREIGN KEY([NoLangue])
REFERENCES [dbo].[Langues] ([NoLangue])
GO
ALTER TABLE [dbo].[FilmsLangues] CHECK CONSTRAINT [FK_FilmsLangues_Langues]
GO
ALTER TABLE [dbo].[FilmsSousTitres]  WITH CHECK ADD  CONSTRAINT [FK_FilmsSousTitres_Films] FOREIGN KEY([NoFilm])
REFERENCES [dbo].[Films] ([NoFilm])
GO
ALTER TABLE [dbo].[FilmsSousTitres] CHECK CONSTRAINT [FK_FilmsSousTitres_Films]
GO
ALTER TABLE [dbo].[FilmsSousTitres]  WITH CHECK ADD  CONSTRAINT [FK_FilmsSousTitres_SousTitres] FOREIGN KEY([NoSousTitre])
REFERENCES [dbo].[SousTitres] ([NoSousTitre])
GO
ALTER TABLE [dbo].[FilmsSousTitres] CHECK CONSTRAINT [FK_FilmsSousTitres_SousTitres]
GO
ALTER TABLE [dbo].[FilmsSupplements]  WITH CHECK ADD  CONSTRAINT [FK_FilmsSupplements_Films] FOREIGN KEY([NoFilm])
REFERENCES [dbo].[Films] ([NoFilm])
GO
ALTER TABLE [dbo].[FilmsSupplements] CHECK CONSTRAINT [FK_FilmsSupplements_Films]
GO
ALTER TABLE [dbo].[FilmsSupplements]  WITH CHECK ADD  CONSTRAINT [FK_FilmsSupplements_Supplements] FOREIGN KEY([NoSupplement])
REFERENCES [dbo].[Supplements] ([NoSupplement])
GO
ALTER TABLE [dbo].[FilmsSupplements] CHECK CONSTRAINT [FK_FilmsSupplements_Supplements]
GO
ALTER TABLE [dbo].[Utilisateurs]  WITH CHECK ADD  CONSTRAINT [FK_Utilisateurs_TypesUtilisateur] FOREIGN KEY([TypeUtilisateur])
REFERENCES [dbo].[TypesUtilisateur] ([TypeUtilisateur])
GO
ALTER TABLE [dbo].[Utilisateurs] CHECK CONSTRAINT [FK_Utilisateurs_TypesUtilisateur]
GO
ALTER TABLE [dbo].[UtilisateursPreferences]  WITH CHECK ADD  CONSTRAINT [FK_UtilisateursPreferences_Preferences] FOREIGN KEY([NoPreference])
REFERENCES [dbo].[Preferences] ([NoPreference])
GO
ALTER TABLE [dbo].[UtilisateursPreferences] CHECK CONSTRAINT [FK_UtilisateursPreferences_Preferences]
GO
ALTER TABLE [dbo].[UtilisateursPreferences]  WITH CHECK ADD  CONSTRAINT [FK_UtilisateursPreferences_Utilisateurs] FOREIGN KEY([NoUtilisateur])
REFERENCES [dbo].[Utilisateurs] ([NoUtilisateur])
GO
ALTER TABLE [dbo].[UtilisateursPreferences] CHECK CONSTRAINT [FK_UtilisateursPreferences_Utilisateurs]
GO
ALTER TABLE [dbo].[ValeursPreferences]  WITH CHECK ADD  CONSTRAINT [FK_ValeursPreferences_UtilisateursPreferences] FOREIGN KEY([NoUtilisateur], [NoPreference])
REFERENCES [dbo].[UtilisateursPreferences] ([NoUtilisateur], [NoPreference])
GO
ALTER TABLE [dbo].[ValeursPreferences] CHECK CONSTRAINT [FK_ValeursPreferences_UtilisateursPreferences]
GO
USE [master]
GO
ALTER DATABASE [BD5W6_424P] SET  READ_WRITE 
GO
