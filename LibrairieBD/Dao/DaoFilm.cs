using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using GGFlix_Test;
using LibrairieBD.Entites;
using LibrairieBD.Sql;

namespace LibrairieBD.Dao
{
    public class DaoFilm : IDao<Film, int>
    {
        private readonly IDbAdapter adapter;

        public DaoFilm(IDbAdapter adapter)
        {
            this.adapter = adapter;
        }

        public IList<Film> FindAll()
        {
            return adapter.SelectAllInTable<Film>();
        }

        public Film Save(Film film)
        {
            if (film.NoFilm == null)  return adapter.InsertInto(film);

            return adapter.UpdateRow(film);
        }

        public bool Delete(Film film)
        {
            if (film.NoFilm == null) throw new ArgumentException("Id cannot be null");

            return adapter.DeleteRow(film);
        }

        public Film FindById(int id)
        {
            Expression<Func<Film, bool>> condition = film => film.NoFilm.Value == id;

            IList<Film> returnedFilms = adapter.SelectWhere(condition);

            return returnedFilms.Count == 0 ? null : returnedFilms[0];
        }
    }
}
