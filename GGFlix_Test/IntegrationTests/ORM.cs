using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Text;
using System.Transactions;
using LibrairieBD.Dao;
using LibrairieBD.Entites;
using LibrairieBD.Sql;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SqlDataAdapter = LibrairieBD.Sql.SqlDataAdapter;

namespace GGFlix_Test.IntegrationTests
{
    [TestClass]
    public class ORM
    {
        private static readonly string CONNECTION_STRING = new SqlConnectionStringBuilder
        {
            DataSource = "sqlinfo.cgodin.qc.ca",
            InitialCatalog = "BD5W6_424P",
            UserID = "5w6equipe424p",
            Password = "Secret72413",
            
        }.ToString();
        private static readonly SqlDataContext context = new SqlDataContext(CONNECTION_STRING);
        private static readonly SqlDataAdapter adapter = new SqlDataAdapter(context);

        [TestMethod]
        [TestCategory("Integration")]
        public void TestSelectAllFilms()
        {
            DaoFilm daoFilm = new DaoFilm(adapter);

            IList<Film> films = daoFilm.FindAll();

            return;
        }

        [TestMethod]
        [TestCategory("Integration")]
        public void TestSelectById()
        {
            DaoFilm daoFilm = new DaoFilm(adapter);

            Film film = daoFilm.FindById(181001);

            return;
        }

        [TestMethod]
        [TestCategory("Integration")]
        public void TestCRUD()
        {
            DaoFilm daoFilm = new DaoFilm(adapter);
            Film film = new Film
            {
                AnneeSortie = null,
                Categorie = 1,
                DateMAJ = new DateTime(2018, 01, 01),
                DureeMinutes = 34,
                Resume = "test",
                FilmOriginal = true,
                ImagePochette = "test",
                TitreFrancais = "test",
                TitreOriginal = "test",
                VersionEtendue = false,
                NoProducteur = 1,
                NoRealisateur =  1,
                NoUtilisateurMAJ = 1,
                XTra = "",
            };
            bool deleteSucceeded = false;
            Film deletedFilm;

            using (TransactionScope scope = new TransactionScope())
            {
                film = daoFilm.Save(film);
                Film addedFilm = daoFilm.FindById(film.NoFilm.Value);
                deleteSucceeded = daoFilm.Delete(addedFilm);
                deletedFilm = daoFilm.FindById(film.NoFilm.Value);
            }

            Assert.IsTrue(deleteSucceeded);
            Assert.IsNull(deletedFilm);
        }
    }
}
