using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace AxaFailProof
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }

        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                "Default", // Route name
                "{action}/{id}", // URL with parameters
                new { controller = "Home", action = "Index", id = UrlParameter.Optional } // Parameter defaults
            );
            routes.MapRoute(
                "SEO", // Route name
                "{seo}/{action}", // URL with parameters
                new { controller = "Home", action = "Index", seo = UrlParameter.Optional} // Parameter defaults
            );

            routes.MapRoute(
                "ArchiveByDate", // Route name
                "{action}/{month}/{year}", // URL with parameters
                new { controller = "Home", action = "ArchiveByDate", month = UrlParameter.Optional, year = UrlParameter.Optional } // Parameter defaults
            );

            routes.MapRoute(
                "NotFound", // Route name
                "NotFound", // URL with parameters
                new { controller = "Home", action = "NotFound" } // Parameter defaults
            );

        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            RegisterGlobalFilters(GlobalFilters.Filters);
            RegisterRoutes(RouteTable.Routes);
        }
    }
}