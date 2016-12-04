using Autofac;
using Autofac.Integration.Mvc;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PTT.Repositories.Abstract.Interfaces;
using PTT.Repositories.Concrete;

namespace PTT.WebUI.Infrastructure
{
    public class AutofacConfig
    {
        public static void ConfigureContainer()
        {
            // получаем экземпляр контейнера
            var builder = new ContainerBuilder();

            // регистрируем контроллер в текущей сборке
            builder.RegisterControllers(typeof(MvcApplication).Assembly);

            var connectionString = ConfigurationManager.ConnectionStrings["PurchaseAppDbEntities"].ConnectionString;
            // регистрируем споставление типов
            builder.RegisterType<SqlPurchaseRepository>()
                .As<IPurchaseRepository>()
                .WithParameter("connectionString", connectionString);

            builder.RegisterType<SqlPlaceRepository>()
                .As<IPlaceRepository>()
                .WithParameter("connectionString", connectionString);

            builder.RegisterType<SqlCategoryRepository>()
                .As<ICategoryRepository>()
                .WithParameter("connectionString", connectionString);

            builder.RegisterType<SqlBudgetRepository>()
                .As<IBudgetRepository>()
                .WithParameter("connectionString", connectionString);

            builder.RegisterType<SqlImportanceRepository>()
                .As<IImportanceRepository>()
                .WithParameter("connectionString", connectionString);

            // создаем новый контейнер с теми зависимостями, которые определены выше
            var container = builder.Build();

            // установка сопоставителя зависимостей
            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
        }
    }
}