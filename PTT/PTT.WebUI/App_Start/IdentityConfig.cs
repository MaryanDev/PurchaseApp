using Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PTT.WebUI.Infrastructure.Autentification;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin;

namespace PTT.WebUI.App_Start
{
    public class IdentityConfig
    {
        public void Configuration(IAppBuilder app)
        {
            app.CreatePerOwinContext<PttIdentityDbContext>(PttIdentityDbContext.Create);
            app.CreatePerOwinContext<PttUserManager>(PttUserManager.Create);

            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Account/Login"),
            });
        }
    }
}