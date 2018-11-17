using System.Collections.Generic;
using System.Reflection;
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
        private Mock<IDbAdapter> adapter;
        private DaoFilm daoFilm;

        [TestInitialize]
        public void BeforeEach()
        {
            adapter = new Mock<IDbAdapter>();
            daoFilm = new DaoFilm(adapter.Object);
        }

        [TestMethod]
        public void FindAllShouldReturnAllFromDb()
        {
            IList<Film> films = new List<Film>();
            adapter.Setup(ad => ad.SelectAllInTable<Film>()).Returns(films);

            Assert.AreSame(films, daoFilm.FindAll());
            adapter.Verify(ad => ad.SelectAllInTable<Film>(), Times.Once);
        }
    }
}
