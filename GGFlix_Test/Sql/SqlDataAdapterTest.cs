using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using GGFlix_Test.Entites;
using LibrairieBD;
using LibrairieBD.Sql;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using SqlDataAdapter = LibrairieBD.Sql.SqlDataAdapter;
using GGFlix_Test.Utils;

namespace GGFlix_Test
{
    [TestClass]
    public class SqlDataAdapterTest
    {
        private static Mock<ISqlDataContext> _contextMock = new Mock<ISqlDataContext>();

        private SqlDataAdapter dataAdapter = new SqlDataAdapter(_contextMock.Object);

        [TestInitialize]
        public void BeforeEach()
        {
            _contextMock.Reset();
            Mock<IDataReader> emptyDataReader = new Mock<IDataReader>();
            _contextMock.Setup(ctxt => ctxt.ExecuteReader(It.IsAny<SqlCommand>())).Returns(emptyDataReader.Object);
        }

        [TestMethod]
        public void GivenADataContext_WhenSelectAllInTable_ShouldQueryContext()
        {
            ISqlDataContext aDataContext = _contextMock.Object;
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(aDataContext);

            sqlDataAdapter.SelectAllInTable<ColumnMappingExample>();

            _contextMock.Verify(c => c.ExecuteReader(It.IsAny<SqlCommand>()));
        }

        [TestMethod]
        public void GivenAnotherDataContext_WhenSelectAllInTable_ShouldQueryOtherContext()
        {
            Mock<ISqlDataContext> anotherMock = new Mock<ISqlDataContext>();
            ISqlDataContext aDataContext = anotherMock.Object;
            Mock<IDataReader> emptyDataReader = new Mock<IDataReader>();
            anotherMock.Setup(ctxt => ctxt.ExecuteReader(It.IsAny<SqlCommand>())).Returns(emptyDataReader.Object);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(aDataContext);

            sqlDataAdapter.SelectAllInTable<ColumnMappingExample>();

            anotherMock.Verify(c => c.ExecuteReader(It.IsAny<SqlCommand>()));
        }

        [TestMethod]
        public void GivenAnEntityToSelect_WhenSelectAllInTable_ShouldFormValidSelectQuery()
        {
            string validSelectQuery = "SELECT * FROM ColumnMappingExamples";
            ISqlDataContext aDataContext = _contextMock.Object;
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(aDataContext);

            sqlDataAdapter.SelectAllInTable<ColumnMappingExample>();

            _contextMock.Verify(
                context => context.ExecuteReader(It.Is<SqlCommand>(command => command.CommandText == validSelectQuery))
            );
        }

        [TestMethod]
        public void GivenAnEntityWithMappingToSelect_WhenSelectAllInTable_ShouldFormValidSelectQuery()
        {
            string validSelectQuery = "SELECT * FROM TablesMapping";

            dataAdapter.SelectAllInTable<TableMappingOverrideExample>();

            _contextMock.Verify(
                context => context.ExecuteReader(It.Is<SqlCommand>(command => command.CommandText == validSelectQuery))
            );
        }

        [TestMethod]
        public void GivenAnotherEntityWithMappingToSelect_WhenSelectAllInTable_ShouldFormValidSelectQuery()
        {
            string validSelectQuery = "SELECT * FROM Tables";

            dataAdapter.SelectAllInTable<AnotherTableMappingOverrideExample>();

            _contextMock.Verify(
                context => context.ExecuteReader(It.Is<SqlCommand>(command => command.CommandText == validSelectQuery))
            );
        }

        [TestMethod]
        public void GivenADataReader_WhenSelectAllInTable_ShouldConvertRowsToObjects()
        {
            _contextMock.SetupSelect("SELECT * FROM Entities", GenerateADataReader());
            IEnumerable<ExampleEntity> expectedEntities = GenerateExpectedExampleEntities();

            IEnumerable<ExampleEntity> entites = dataAdapter.SelectAllInTable<ExampleEntity>();

            using (IEnumerator<ExampleEntity> actualsEnumerator = entites.GetEnumerator())
            using (IEnumerator<ExampleEntity> expectedEnumerator = expectedEntities.GetEnumerator())
            {
                while (actualsEnumerator.MoveNext())
                {
                    expectedEnumerator.MoveNext();

                    Assert.AreEqual(expectedEnumerator.Current.Property, actualsEnumerator.Current.Property);
                }
            }
        }

        [TestMethod]
        public void GivenAnotherDataReader_WhenSelectAllInTable_ShouldConvertRowsToObjects()
        {
            _contextMock.SetupSelect("SELECT * FROM Entites", GenerateADataReader());
            IEnumerable<AnotherExampleEntity> expectedEntities = GenerateExpectedOtherExampleEntities();

            IEnumerable<AnotherExampleEntity> entites = dataAdapter.SelectAllInTable<AnotherExampleEntity>();

            using (IEnumerator<AnotherExampleEntity> actualsEnumerator = entites.GetEnumerator())
            using (IEnumerator<AnotherExampleEntity> expectedEnumerator = expectedEntities.GetEnumerator())
            {
                while (actualsEnumerator.MoveNext())
                {
                    expectedEnumerator.MoveNext();

                    Assert.AreEqual(expectedEnumerator.Current.Property, actualsEnumerator.Current.Property);
                    Assert.AreEqual(expectedEnumerator.Current.AnotherProperty, actualsEnumerator.Current.AnotherProperty);
                }
            }
        }

        public IDataReader GenerateADataReader()
        {
            Mock<IDataReader> mockDataReader = new Mock<IDataReader>();

            mockDataReader.SetupSequence(dr => dr.Read())
                .Returns(true)
                .Returns(true)
                .Returns(false);

            mockDataReader.Setup(dr => dr["Property"]).Returns("aValue");
            mockDataReader.Setup(dr => dr["AnotherProperty"]).Returns("anotherValue");

            return mockDataReader.Object;
        }

        private static IEnumerable<ExampleEntity> GenerateExpectedExampleEntities()
        {
            return new List<ExampleEntity>
            {
                new ExampleEntity { Property = "aValue" },
                new ExampleEntity { Property = "aValue" },
            };
        }

        private static IEnumerable<AnotherExampleEntity> GenerateExpectedOtherExampleEntities()
        {
            return new List<AnotherExampleEntity>
            {
                new AnotherExampleEntity { Property = "aValue", AnotherProperty = "anotherValue"},
                new AnotherExampleEntity { Property = "aValue",  AnotherProperty = "anotherValue" },
            };
        }
    }

    static class ContextUtils
    {
        public static void SetupSelect(this Mock<ISqlDataContext> contextMock, string selectQuery, IDataReader returnValue)
        {
            contextMock.Setup(
                ctxt => ctxt.ExecuteReader(It.Is<SqlCommand>(cmd => cmd.CommandText == selectQuery))
            ).Returns(returnValue);
        }
    }
}
