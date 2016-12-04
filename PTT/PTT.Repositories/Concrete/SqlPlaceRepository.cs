using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using PTT.Entities;
using PTT.Repositories.Abstract.Classes;
using PTT.Repositories.Abstract.Interfaces;

namespace PTT.Repositories.Concrete
{
    public class SqlPlaceRepository : BaseRepository<Place>, IPlaceRepository
    {
        public SqlPlaceRepository(string connectionString)
            : base(connectionString)
        {

        }
        public void Delete(Place entity)
        {
            context.Entry<Place>(entity).State = EntityState.Deleted;
            context.SaveChanges();
        }

        public List<Place> Get(Func<Place, bool> criteria = null, params Expression<Func<Place, object>>[] paths)
        {
            IQueryable<Place> query = context.Set<Place>();
            query = IncludePaths(paths, query);
            if (criteria != null)
            {
                query = query.Where(criteria).AsQueryable();
            }
            return query.ToList();
        }

        public Place GetSingle(Func<Place, bool> criteria, params Expression<Func<Place, object>>[] paths)
        {
            IQueryable<Place> query = context.Set<Place>();
            query = IncludePaths(paths, query);
            query = query.Where(criteria).AsQueryable();
            return query.SingleOrDefault();
        }

        public Place Insert(Place entity)
        {
            context.Set<Place>().Add(entity);
            context.SaveChanges();
            return entity;
        }

        public Place Update(Place entity)
        {
            context.Entry<Place>(entity).State = EntityState.Modified;
            context.SaveChanges();
            return entity;
        }
    }
}
