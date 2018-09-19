using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Molecule.Startup))]
namespace Molecule
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
