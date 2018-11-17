using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
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
    }
}
