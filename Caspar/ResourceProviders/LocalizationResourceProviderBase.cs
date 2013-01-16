using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Caspar.ResourceProviders
{
    public abstract class LocalizationResourceProviderBase : ILocalizationResourceProvider
    {
        protected LocalizationResourceProviderBase()
        {
        }

        public string GetString(string cultureName, string key)
        {
            return OnGetString(cultureName, key);
        }

        public string GetString(string key)
        {
            // find the localized result only if the key is not null
            var result = string.IsNullOrWhiteSpace(key) ? null : GetString(LocalizationResourceProvider.CultureName, key);
            // return the original key if didn't find the localized result
            return string.IsNullOrWhiteSpace(result) ? key : result;
        }

        public IHtmlString GetHtmlString(string cultureName, string key)
        {
            return MvcHtmlString.Create(GetString(cultureName, key));
        }

        public IHtmlString GetHtmlString(string key)
        {
            return MvcHtmlString.Create(GetString(key));
        }

        protected abstract string OnGetString(string cultureName, string key);
    }
}
