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
    public class SqlCategoryRepository : BaseRepository<Category>, ICategoryRepository
    {
        public SqlCategoryRepository(string connectionString)
            : base(connectionString)
        {

        }
        public void Delete(Category entity)
        {
            context.Entry<Category>(entity).State = EntityState.Deleted;
            context.SaveChanges();
        }

        public List<Category> Get(Func<Category, bool> criteria = null, params Expression<Func<Category, object>>[] paths)
        {
            IQueryable<Category> query = context.Set<Category>();
            query = IncludePaths(paths, query);
            if (criteria != null)
            {
                query = query.Where(criteria).AsQueryable();
            }
            return query.ToList();
        }

        public Category GetSingle(Func<Category, bool> criteria, params Expression<Func<Category, object>>[] paths)
        {
            IQueryable<Category> query = context.Set<Category>();
            query = IncludePaths(paths, query);
            query = query.Where(criteria).AsQueryable();
            return query.SingleOrDefault();
        }

        public Category Insert(Category entity)
        {
            context.Set<Category>().Add(entity);
            context.SaveChanges();
            return entity;
        }

        public Category Update(Category entity)
        {
            context.Entry<Category>(entity).State = EntityState.Modified;
            context.SaveChanges();
            return entity;
        }

        public List<string> GetCategoriesByUserId(int id)
        {
            var categories = from category in context.Categories
                             join purchase in context.Purchases on category.Id equals purchase.CategoryId
                             where purchase.UserId == id
                             select category.Title;

            return categories.Distinct().ToList();
        }
    }
}
