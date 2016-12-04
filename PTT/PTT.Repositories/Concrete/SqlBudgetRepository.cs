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
    public class SqlBudgetRepository : BaseRepository<Budget>, IBudgetRepository
    {
        public SqlBudgetRepository(string connectionString)
            : base(connectionString)
        {

        }
        public void Delete(Budget entity)
        {
            context.Entry<Budget>(entity).State = EntityState.Deleted;
            context.SaveChanges();
        }

        public List<Budget> Get(Func<Budget, bool> criteria = null, params Expression<Func<Budget, object>>[] paths)
        {
            IQueryable<Budget> query = context.Set<Budget>();
            query = IncludePaths(paths, query);
            if (query != null)
            {
                query = query.Where(criteria).AsQueryable();
            }
            return query.ToList();
        }

        public Budget GetSingle(Func<Budget, bool> criteria, params Expression<Func<Budget, object>>[] paths)
        {
            IQueryable<Budget> query = context.Set<Budget>();
            query = IncludePaths(paths, query);
            query = query.Where(criteria).AsQueryable();
            return query.SingleOrDefault();
        }

        public Budget Insert(Budget entity)
        {
            context.Set<Budget>().Add(entity);
            context.SaveChanges();
            return entity;
        }

        public Budget Update(Budget entity)
        {
            context.Entry<Budget>(entity).State = EntityState.Modified;
            context.SaveChanges();
            return entity;
        }
    }
}
