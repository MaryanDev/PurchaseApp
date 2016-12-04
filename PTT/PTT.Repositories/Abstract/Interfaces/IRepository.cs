using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace PTT.Repositories.Abstract.Interfaces
{
    public interface IRepository<TEntity> where TEntity: class
    {
        List<TEntity> Get(Func<TEntity, bool> criteria = null, params Expression<Func<TEntity, object>>[] paths);
        TEntity GetSingle(Func<TEntity, bool> criteria, params Expression<Func<TEntity, object>>[] paths);
        TEntity Insert(TEntity entity);
        void Delete(TEntity entity);
        TEntity Update(TEntity entity);
    }
}
