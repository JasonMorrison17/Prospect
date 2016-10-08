using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PowerPropspectPro.CustomAttributes
{
    public class AllowAnonymousOnlyAttribute : AuthorizeAttribute
    {
        private readonly bool _authorize;

        public AllowAnonymousOnlyAttribute()
        {
            _authorize = true;
        }

        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            if (_authorize)
                return true;

            return base.AuthorizeCore(httpContext);
        }
    }
}