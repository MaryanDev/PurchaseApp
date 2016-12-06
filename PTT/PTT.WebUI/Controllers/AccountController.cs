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
    [Authorize]
    public class AccountController : Controller
    {
        [AllowAnonymous]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel loginModel, string returnUrl)
        {
            PttUser user = UserManager.Find(loginModel.Login, loginModel.Password);

            if (user == null)
            {
                ModelState.AddModelError("", "Invalid user name or password.");
            }
            else
            {
                ClaimsIdentity ident = UserManager.CreateIdentity(user,
                    DefaultAuthenticationTypes.ApplicationCookie);

                AuthManager.SignOut();
                AuthManager.SignIn(new AuthenticationProperties
                {
                    IsPersistent = false
                }, ident);
                if(returnUrl != null)
                {
                    return Redirect(returnUrl);
                }
                else
                {
                    return RedirectToAction("Index", "Dashboard");
                }
            }

            return View(loginModel);
        }

        [AllowAnonymous]
        public ActionResult Register()
        {
            if (Request.IsAuthenticated)
            {
                return RedirectToAction("Index", "Dashboard");
            }
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public ActionResult Register(RegisterModel regModel)
        {
            if (ModelState.IsValid)
            {
                PttUser userToRegister = new PttUser { UserName = regModel.UserName, Email = regModel.Email };
                IdentityResult resultOfRegisteing = UserManager.Create(userToRegister, regModel.Password);

                if (resultOfRegisteing.Succeeded)
                {
                    RedirectToAction("Index", "Home");
                }
                else
                {
                    AddErrorsFromResult(resultOfRegisteing);
                }
            }
            return View(regModel);
        }

        public ActionResult Logout()
        {
            AuthManager.SignOut();
            return RedirectToAction("Login");
        }

        private IAuthenticationManager AuthManager => HttpContext.GetOwinContext().Authentication;

        private PttUserManager UserManager => HttpContext.GetOwinContext().GetUserManager<PttUserManager>();

        private void AddErrorsFromResult(IdentityResult result)
        {
            foreach (string error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }
    }
}