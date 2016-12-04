using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity.EntityFramework;

namespace PTT.WebUI.Infrastructure.Autentification
{
    public class PttIdentityDbContext : IdentityDbContext<PttUser>
    {
        public PttIdentityDbContext() : base("name=PurchaseAppDbEntities") { }


        public static PttIdentityDbContext Create()
        {
            return new PttIdentityDbContext();
        }
    }
}