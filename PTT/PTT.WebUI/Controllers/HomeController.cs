using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PTT.Repositories.Abstract.Interfaces;

namespace PTT.WebUI.Controllers
{
    public class HomeController : Controller
    {
        private IPurchaseRepository _purchaseRepo;
        public HomeController(IPurchaseRepository purchaseRepo)
        {
            this._purchaseRepo = purchaseRepo;
        }
        // GET: Dashboard
        public ActionResult Index()
        {
            return View();
        }
    }
}