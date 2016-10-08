using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace PowerPropspectPro.CustomAttributes
{
    public class AuthroizeWithoutRedirectAttribute : AuthorizeAttribute
    {
        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {

            var httpContext = filterContext.HttpContext;
            var response = httpContext.Response;

            response.SuppressFormsAuthenticationRedirect = true;
            response.StatusCode = (int)HttpStatusCode.Unauthorized;
            response.End();

            base.HandleUnauthorizedRequest(filterContext);
        }
    }
}