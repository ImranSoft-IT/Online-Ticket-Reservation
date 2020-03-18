using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Online_AirTicket.Startup))]
namespace Online_AirTicket
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
