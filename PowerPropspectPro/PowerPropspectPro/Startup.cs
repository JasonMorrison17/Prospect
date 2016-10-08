using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PowerPropspectPro.Startup))]
namespace PowerPropspectPro
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
