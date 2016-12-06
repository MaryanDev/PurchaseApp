using Microsoft.AspNet.Identity;
using PTT.Entities;
using PTT.Repositories.Abstract.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PTT.WebUI.Controllers
{
    public class CategoryController : Controller
    {
        private ICategoryRepository _categoryRepo;

        public CategoryController(ICategoryRepository categoryRepo)
        {
            _categoryRepo = categoryRepo;
        }

        [HttpGet]
        public JsonResult GteAllCategories()
        {
            var categories = _categoryRepo.Get();
            return Json(categories, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetCategoriesForCurrentUser()
        {
            var categories = _categoryRepo.GetCategoriesByUserId(User.Identity.GetUserId<int>());
            return Json(categories, JsonRequestBehavior.AllowGet);
        }
    }
}