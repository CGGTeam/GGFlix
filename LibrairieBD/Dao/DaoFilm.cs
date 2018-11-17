using System;
using System.Collections.Generic;
using System.Text;
using GGFlix_Test;
using LibrairieBD.Entites;
using LibrairieBD.Sql;

namespace LibrairieBD.Dao
{
    public class DaoFilm : IDao<Film, int>
    {
        private IDbAdapter adapter;

        public DaoFilm(IDbAdapter adapter)
        {
            this.adapter = adapter;
        }

        public IList<Film> FindAll()
        {
            return adapter.SelectAllInTable<Film>();
        }
    }
}
