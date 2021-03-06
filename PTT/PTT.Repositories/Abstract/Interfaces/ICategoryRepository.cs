﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PTT.Entities;

namespace PTT.Repositories.Abstract.Interfaces
{
    public interface ICategoryRepository : IRepository<Category>
    {
        List<string> GetCategoriesByUserId(int id);
    }
}
