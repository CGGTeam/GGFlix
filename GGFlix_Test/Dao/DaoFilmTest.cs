using System.Collections.Generic;
using System.Reflection;
using GGFlix_Test.Utils;
using LibrairieBD;
using LibrairieBD.Dao;
using LibrairieBD.Entites;
using LibrairieBD.Sql;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace GGFlix_Test
{
    [TestClass]
    public class DaoFilmTest
    {
        private static readonly Mock<IDbAdapter> adapter = new Mock<IDbAdapter>();
        private static readonly DaoFilm daoFilm = new DaoFilm(adapter.Object);

        [TestInitialize]
        public void BeforeEach()
        {
            adapter.Reset();
        }

        [TestMethod]
        public void FindAllShouldReturnAllFromDb()
        {
            IList<Film> films = new List<Film>();
            adapter.Setup(ad => ad.SelectAllInTable<Film>()).Returns(films);

            Assert.AreSame(films, daoFilm.FindAll());
            adapter.Verify(ad => ad.SelectAllInTable<Film>(), Times.Once);
        }

        [TestMethod]
        public void GivenAnEntityWithAnId_WhenSave_ThenUpdate()
        {
            Film film = GenerateFilm(true);

            daoFilm.Save(film);

            adapter.Verify(ad => ad.UpdateRow(film), Times.Once);
        }

        [TestMethod]
        public void GivenAnEntityWithNoId_WhenSave_ThenInsert()
        {
            Film film = GenerateFilm();

            daoFilm.Save(film);

            adapter.Verify(ad => ad.InsertInto<Film>(film), Times.Once);
        }

        public Film GenerateFilm(bool withId = false)
        {
            Film film =  new Film
            {
                TitreFrancais = "test",
                XTra = "",
                AnneeSortie = 1999
            };

            if (withId) film.NoFilm = 1;

            return film;
        }

        public Film GenerateAnotherFilm(bool withId = false)
        {
            Film film = new Film
            {
                TitreFrancais = "test2",
                XTra = "asd",
                AnneeSortie = 2018
            };

            if (withId) film.NoFilm = 1;

            return film;
        }
    }
}
