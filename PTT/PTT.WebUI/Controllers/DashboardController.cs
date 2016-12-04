using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PTT.Repositories.Abstract.Interfaces;

namespace PTT.WebUI.Controllers
{
    public class DashboardController : Controller
    {
        private IPurchaseRepository _purchaseRepo;
        public DashboardController(IPurchaseRepository purchaseRepo)
        {
            this._purchaseRepo = purchaseRepo;
        }
        // GET: Dashboard
        public ActionResult Index()
        {
            return View(_purchaseRepo.Get());
        }
    }
}