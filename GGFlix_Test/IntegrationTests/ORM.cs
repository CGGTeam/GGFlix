using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq.Expressions;
using System.Reflection;
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
        public void TestCRUD()
        {
            Film film = new Film
            {
                AnneeSortie = null,
                Categorie = 1,
                DureeMinutes = 34,
                Resume = "test",
                FilmOriginal = true,
                ImagePochette = "test",
                TitreFrancais = "test",
                TitreOriginal = "test",
                VersionEtendue = false,
                NoProducteur = 1,
                NoRealisateur = 1,
                NoUtilisateurMAJ = 1,
                XTra = "",
            };

            Assert.IsTrue(ValidateCRUDForEntity(film));
        }

        private bool ValidateCRUDForEntity<T>(T entity)
        {
            GenericDao<T> dao = new GenericDao<T>(adapter);
            bool deleteSucceeded;
            bool existsSucceeded;
            bool addSucceeded;

            using (TransactionScope scope = new TransactionScope())
            {
                IList<T> entities = dao.FindAll();
                existsSucceeded = dao.Exists(entities[0]);
                T addedEntity = dao.Save(entity);
                addSucceeded = dao.Find(addedEntity).Count > 0;
                deleteSucceeded = dao.Delete(addedEntity) && !dao.Exists(addedEntity);
            }

            return deleteSucceeded && existsSucceeded && addSucceeded;
        }

        [TestMethod]
        [TestCategory("Integration")]
        public void TestExpressionQuery()
        {
            ExpressionReadQuery<Film> query = new ExpressionReadQuery<Film>();

            query.OrderByList.Add(new OrderByExpression<Film, object>(film => film.NoFilm));
            query.OrderByList.Add(new OrderByExpression<Film, object>(film => film.Categorie, false));

            query.WhereExpression = film => film.Categorie.Value < 1;

            SqlCommand command = query.MakeCommand();
        }
    }
}
