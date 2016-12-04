using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PTT.Entities;

namespace PTT.WebUI.Infrastructure.Autentification
{
    public class PttUserRole : IdentityUserRole<int> { }
    public class PttUserClaim : IdentityUserClaim<int> { }
    public class PttUserLogin : IdentityUserLogin<int> { }

    public class PttRole : IdentityRole<int, PttUserRole>
    {
        public PttRole() { }
        public PttRole(string name) { Name = name; }
    }

    public class PttUserStore : UserStore<PttUser, PttRole, int,
        PttUserLogin, PttUserRole, PttUserClaim>
    {
        public PttUserStore(PttIdentityDbContext context)
            : base(context)
        {
        }
    }

    public class CustomRoleStore : RoleStore<PttRole, int, PttUserRole>
    {
        public CustomRoleStore(PttIdentityDbContext context)
            : base(context)
        {
        }
    }
}