using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using PTT.Entities;

namespace PTT.WebUI.Infrastructure.Autentification
{
    public class PttUserManager : UserManager<PttUser, int>
    {
        public PttUserManager(IUserStore<PttUser, int> store)
            : base(store)
        { }

        public static PttUserManager Create(IdentityFactoryOptions<PttUserManager> options,
            IOwinContext context)
        {
            //PttIdentityDbContext db = context.Get<PttIdentityDbContext>();
            PttUserManager manager = new PttUserManager(new PttUserStore(context.Get<PttIdentityDbContext>()));
            return manager;
        }
    }
}