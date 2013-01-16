using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Caspar.Sample.Controllers
{
    public abstract class DefaultController : Controller
    {
        protected override IAsyncResult BeginExecuteCore(AsyncCallback callback, object state)
        {
            // invoke the localization logic
            LocalizationControllerHelper.OnBeginExecuteCore(this);

            // invoke the base method
            return base.BeginExecuteCore(callback, state);
        }
    }
}
