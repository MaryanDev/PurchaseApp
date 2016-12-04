using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity.EntityFramework;

namespace PTT.WebUI.Infrastructure.Autentification
{
    public class PttIdentityDbContext : IdentityDbContext<PttUser, PttRole, int, PttUserLogin, PttUserRole, PttUserClaim>
    {
        public PttIdentityDbContext() : base("name=IdentityConnection") { }


        public static PttIdentityDbContext Create()
        {
            return new PttIdentityDbContext();
        }
    }
}