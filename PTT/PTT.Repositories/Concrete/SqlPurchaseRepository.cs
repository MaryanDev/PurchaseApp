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
    public class SqlPurchaseRepository : BaseRepository<Purchase>, IPurchaseRepository
    {
        public SqlPurchaseRepository(string connectionString)
            : base(connectionString)
        {

        }
        public void Delete(Purchase entity)
        {
            context.Entry<Purchase>(entity).State = EntityState.Deleted;
            context.SaveChanges();
        }

        public List<Purchase> Get(Func<Purchase, bool> criteria = null, params Expression<Func<Purchase, object>>[] paths)
        {
            IQueryable<Purchase> query = context.Set<Purchase>();
            query = IncludePaths(paths, query);
            if (criteria != null)
            {
                query = query.Where(criteria).AsQueryable();
            }
            return query.ToList();
        }

        public Purchase GetSingle(Func<Purchase, bool> criteria, params Expression<Func<Purchase, object>>[] paths)
        {
            IQueryable<Purchase> query = context.Set<Purchase>();
            query = IncludePaths(paths, query);
            query = query.Where(criteria).AsQueryable();
            return query.SingleOrDefault();
        }

        public Purchase Insert(Purchase entity)
        {
            context.Set<Purchase>().Add(entity);
            context.SaveChanges();
            return entity;
        }

        public Purchase Update(Purchase entity)
        {
            context.Entry<Purchase>(entity).State = EntityState.Modified;
            context.SaveChanges();
            return entity;
        }
    }
}
