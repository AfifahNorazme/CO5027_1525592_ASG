using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grande_Collecte
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Loginbtn_Click(object sender, EventArgs e)
        {
                if (Page.IsValid)
                {
                    var identityDbContext = new IdentityDbContext("db_1525592_co5027_asgConnectionString");
                    var userStore = new UserStore<IdentityUser>(identityDbContext);
                    var userManager = new UserManager<IdentityUser>(userStore);
                    var user = userManager.Find(TxtUsername.Text, Txtpswd.Text);
                    if (user != null)
                    {
                    LogUserIn(userManager, user);
                        Server.Transfer("Admin.aspx", true);
                    }
                    else
                    {
                        LitLogin.Text = "Sorry, you're not a member. Please register to become one of our member";
                    }
                }
            }

            private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            }
        }
    }

