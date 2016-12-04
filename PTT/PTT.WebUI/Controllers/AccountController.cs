using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using PTT.WebUI.Infrastructure.Autentification;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;
using Microsoft.Owin.Host.SystemWeb;
using PTT.WebUI.Models;

namespace PTT.WebUI.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Login()
        {
            return View();
        }

        //[HttpPost]
        //public ActionResult Login(string s)
        //{
            
        //}

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(RegisterModel regModel)
        {
            return View(regModel);
        }

        private IAuthenticationManager AuthManager => HttpContext.GetOwinContext().Authentication;

        private PttUserManager UserManager => HttpContext.GetOwinContext().GetUserManager<PttUserManager>();
    }
}