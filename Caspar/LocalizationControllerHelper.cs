using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Caspar
{
    public class LocalizationControllerHelper
    {
        public static void OnBeginExecuteCore(Controller controller)
        {
            if (controller.RouteData.Values[Constants.ROUTE_PARAMNAME_LANG] != null &&
                !string.IsNullOrWhiteSpace(controller.RouteData.Values[Constants.ROUTE_PARAMNAME_LANG].ToString()))
            {
                // set the culture from the route data (url)
                var lang = controller.RouteData.Values[Constants.ROUTE_PARAMNAME_LANG].ToString();
                Thread.CurrentThread.CurrentUICulture = CultureInfo.CreateSpecificCulture(lang);
            }
            else
            {
                // load the culture info from the cookie
                var cookie = controller.HttpContext.Request.Cookies[Constants.COOKIE_NAME];
                var langHeader = string.Empty;
                if (cookie != null)
                {
                    // set the culture by the cookie content
                    langHeader = cookie.Value;
                    Thread.CurrentThread.CurrentUICulture = CultureInfo.CreateSpecificCulture(langHeader);
                }
                else
                {
                    // set the culture by the location if not speicified
                    langHeader = controller.HttpContext.Request.UserLanguages[0];
                    Thread.CurrentThread.CurrentUICulture = CultureInfo.CreateSpecificCulture(langHeader);
                }
                // set the lang value into route data
                controller.RouteData.Values[Constants.ROUTE_PARAMNAME_LANG] = langHeader;
            }

            // save the location into cookie
            HttpCookie _cookie = new HttpCookie(Constants.COOKIE_NAME, Thread.CurrentThread.CurrentUICulture.Name);
            _cookie.Expires = DateTime.Now.AddYears(1);
            controller.HttpContext.Response.SetCookie(_cookie);
        }
    }
}
