using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Caspar.ResourceProviders;

namespace Caspar.Sample.Controllers
{
    public class HomeController : DefaultController
    {
        public ActionResult Index()
        {
            ViewBag.Message = LocalizationResourceProvider.Current.GetString("Controller_HomeIndex_Message");

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = LocalizationResourceProvider.Current.GetString("Controller_HomeAbout_Message");

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = LocalizationResourceProvider.Current.GetString("Controller_HomeContact_Message");

            return View();
        }
    }
}
