using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using PTT.Entities;

namespace PTT.Repositories.Abstract.Classes
{
    public class BaseRepository<TEntity> where TEntity : class
    {
        protected PurchaseAppDbEntities context;

        public BaseRepository(string connectionString)
        {
            this.context = new PurchaseAppDbEntities(connectionString);
        }
        protected IQueryable<TEntity> IncludePaths(Expression<Func<TEntity, object>>[] paths, IQueryable<TEntity> query)
        {
            if (paths != null)
            {
                foreach (var path in paths)
                {
                    query = query.Include(path);
                }
            }
            return query;
        }
    }
}
