using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PTT.Entities;
using System.Data.Entity;
using System.Linq.Expressions;
using PTT.Repositories.Abstract.Classes;
using PTT.Repositories.Abstract.Interfaces;

namespace PTT.Repositories.Concrete
{
    public class SqlImportanceRepository : BaseRepository<Importance>, IImportanceRepository
    {
        public SqlImportanceRepository(string connectionString)
            : base(connectionString)
        {

        }
        public void Delete(Importance entity)
        {
            context.Entry<Importance>(entity).State = EntityState.Deleted;
            context.SaveChanges();
        }

        public List<Importance> Get(Func<Importance, bool> criteria = null, params Expression<Func<Importance, object>>[] paths)
        {
            IQueryable<Importance> query = context.Set<Importance>();
            query = IncludePaths(paths, query);
            if (criteria != null)
            {
                query = query.Where(criteria).AsQueryable();
            }
            return query.ToList();
        }

        public Importance GetSingle(Func<Importance, bool> criteria, params Expression<Func<Importance, object>>[] paths)
        {
            IQueryable<Importance> query = context.Set<Importance>();
            query = IncludePaths(paths, query);
            query = query.Where(criteria).AsQueryable();
            return query.SingleOrDefault();
        }

        public Importance Insert(Importance entity)
        {
            context.Set<Importance>().Add(entity);
            context.SaveChanges();
            return entity;
        }

        public Importance Update(Importance entity)
        {
            context.Entry<Importance>(entity).State = EntityState.Modified;
            context.SaveChanges();
            return entity;
        }
    }
}
