using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.AspNet.Identity.EntityFramework;

namespace PTT.WebUI.Infrastructure.Autentification
{
    public class PttUserManager : UserManager<PttUser>
    {
        public PttUserManager(IUserStore<PttUser> store)
            : base(store)
        { }

        public static PttUserManager Create(IdentityFactoryOptions<PttUserManager> options,
            IOwinContext context)
        {
            PttIdentityDbContext db = context.Get<PttIdentityDbContext>();
            PttUserManager manager = new PttUserManager(new UserStore<PttUser>(db));
            return manager;
        }
    }
}