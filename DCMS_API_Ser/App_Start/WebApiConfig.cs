using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Http.Routing;

namespace DCMS_API_Ser
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();


            ///summary///
            ///this route use for get API
            // define route
            //IHttpRoute defaultRoute = config.Routes.CreateRoute("api/{controller}/{id}", 
            //                                    new { id = RouteParameter.Optional }, null);


            // Add route
            //config.Routes.Add("DefaultApi", defaultRoute);


            ///summary///
            ///this route use for multiple action (like get, post, delete, update) 
            // define route
            config.Routes.MapHttpRoute(
           name: "Default Api",
           routeTemplate: "api/{controller}/{action}/{id}",
           defaults: new { id = RouteParameter.Optional });

            //config.Routes.MapHttpRoute(
            //    name: "DefaultApi",
            //    routeTemplate: "api/{controller}/{id}",
            //    defaults: new { id = RouteParameter.Optional }
            //);

        }
    }
}
