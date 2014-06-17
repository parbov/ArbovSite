using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ArbovSite.Startup))]
namespace ArbovSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
