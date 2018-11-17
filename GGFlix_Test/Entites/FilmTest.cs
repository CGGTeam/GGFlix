using System.Reflection;
using LibrairieBD;
using LibrairieBD.Entites;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace GGFlix_Test
{
    [TestClass]
    public class FilmTest
    {
        private PropertyInfo GetProperty(string propName)
        {
            return typeof(Film).GetProperty(propName);
        }

        private ColumnMapping GetColumMappingForProp(string propName)
        {
            return (ColumnMapping)typeof(Film).GetProperty(propName).GetCustomAttribute(typeof(ColumnMapping));
        }

        private bool TestColMapping(string colName)
        {
            string expectedColName = colName;
            ColumnMapping colMapping = GetColumMappingForProp(colName);

            return expectedColName == colMapping.ColumnName;
        }

        [TestMethod]
        public void NoFilmShouldBeNoFilm()
        {
            Assert.IsTrue(TestColMapping("NoFilm"));
        }

        [TestMethod]
        public void CategorieShouldBeCategorie()
        {
            Assert.IsTrue(TestColMapping("Categorie"));
        }

        [TestMethod]
        public void DateMAJShouldBeDateMAJ()
        {
            Assert.IsTrue(TestColMapping("DateMAJ"));
        }

        [TestMethod]
        public void NoUtilisateurMAJShouldBeNoUtilisateurMAJ()
        {
            Assert.IsTrue(TestColMapping("NoUtilisateurMAJ"));
        }

        [TestMethod]
        public void ResumeShouldBeResume()
        {
            Assert.IsTrue(TestColMapping("Resume"));
        }

        [TestMethod]
        public void DureeMinutesShouldBeDureeMinutes()
        {
            Assert.IsTrue(TestColMapping("DureeMinutes"));
        }

        [TestMethod]
        public void FilmOriginalShouldBeFilmOriginal()
        {
            Assert.IsTrue(TestColMapping("FilmOriginal"));
        }

        [TestMethod]
        public void ImagePochetteShouldBeImagePochette()
        {
            Assert.IsTrue(TestColMapping("ImagePochette"));
        }

        [TestMethod]
        public void TitreFrancaisShouldBeTitreFrancais()
        {
            Assert.IsTrue(TestColMapping("TitreFrancais"));
        }

        [TestMethod]
        public void TitreOriginalShouldBeTitreOriginal()
        {
            Assert.IsTrue(TestColMapping("TitreOriginal"));
        }

        [TestMethod]
        public void VersionEtendueShouldBeVersionEtendue()
        {
            Assert.IsTrue(TestColMapping("VersionEtendue"));
        }

        [TestMethod]
        public void NoRealisateurShouldBeNoRealisateur()
        {
            Assert.IsTrue(TestColMapping("NoRealisateur"));
        }

        [TestMethod]
        public void NoProducteurShouldBeNoProducteur()
        {
            Assert.IsTrue(TestColMapping("NoProducteur"));
        }

        [TestMethod]
        public void XTraShouldBeXTra()
        {
            Assert.IsTrue(TestColMapping("XTra"));
        }

        [TestMethod]
        public void NoFilmShouldBeId()
        {
            PropertyInfo propNoFilm = GetProperty("NoFilm");

            Assert.IsNotNull(propNoFilm.GetCustomAttribute(typeof(Id)));
        }
    }
}
