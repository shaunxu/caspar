using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Mvc;
using System.Web.Mvc.Html;
using System.Web.Routing;

namespace Caspar
{
    public static class LanguageBarHelper
    {
        private const string CST_PARTIAL_PLACEHOLDER = "__partial_placeholder__";

        private class Language
        {
            public string Url { get; set; }
            public string ActionName { get; set; }
            public string ControllerName { get; set; }
            public RouteValueDictionary RouteValues { get; set; }
            public bool IsSelected { get; set; }

            public MvcHtmlString HtmlSafeUrl
            {
                get
                {
                    return MvcHtmlString.Create(Url);
                }
            }
        }

        private static Language LanguageUrl(this HtmlHelper helper, string cultureName, bool strictSelected = false)
        {
            // set the input language to lower
            cultureName = cultureName.ToLower();
            // retrieve the route values from the view context
            var routeValues = new RouteValueDictionary(helper.ViewContext.RouteData.Values);
            // copy the query strings into the route values to generate the link
            var queryString = helper.ViewContext.HttpContext.Request.QueryString;
            foreach (string key in queryString)
            {
                if (queryString[key] != null && !string.IsNullOrWhiteSpace(key))
                {
                    if (routeValues.ContainsKey(key))
                    {
                        routeValues[key] = queryString[key];
                    }
                    else
                    {
                        routeValues.Add(key, queryString[key]);
                    }
                }
            }
            var actionName = routeValues["action"].ToString();
            var controllerName = routeValues["controller"].ToString();
            // set the language into route values
            routeValues[Constants.ROUTE_PARAMNAME_LANG] = cultureName;
            // generate the language specify url
            var urlHelper = new UrlHelper(helper.ViewContext.RequestContext, helper.RouteCollection);
            var url = urlHelper.RouteUrl(Constants.ROUTE_NAME, routeValues);
            // check whether the current thread ui culture is this language
            var current_lang_name = Thread.CurrentThread.CurrentUICulture.Name.ToLower();
            var isSelected = strictSelected ?
                current_lang_name == cultureName :
                current_lang_name.StartsWith(cultureName);
            return new Language()
            {
                Url = url,
                ActionName = actionName,
                ControllerName = controllerName,
                RouteValues = routeValues,
                IsSelected = isSelected
            };
        }

        public static MvcHtmlString LanguageSelectorLink(this HtmlHelper helper,
            string cultureName, string selectedText, string unselectedText,
            IDictionary<string, object> htmlAttributes, bool strictSelected = false)
        {
            var language = LanguageUrl(helper, cultureName, strictSelected);
            var link = helper.RouteLink(language.IsSelected ? selectedText : unselectedText,
                Constants.ROUTE_NAME, language.RouteValues, htmlAttributes);
            return link;
        }

        public static MvcHtmlString LanguageSelectorPartial(this HtmlHelper helper,
            string cultureName, string selectedPartialViewName, string unselectedPartialViewName, object model,
            IDictionary<string, object> htmlAttributes, bool strictSelected = false)
        {
            var language = LanguageUrl(helper, cultureName, strictSelected);
            var partial = helper.Partial(language.IsSelected ? selectedPartialViewName : unselectedPartialViewName, model, helper.ViewData).ToHtmlString();
            var link = helper.RouteLink(CST_PARTIAL_PLACEHOLDER, Constants.ROUTE_NAME, language.RouteValues, htmlAttributes).ToHtmlString();
            return MvcHtmlString.Create(link.Replace(CST_PARTIAL_PLACEHOLDER, partial));
        }
    }
}
