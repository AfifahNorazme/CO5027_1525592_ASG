using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grande_Collecte
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regbtn_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            var user = new IdentityUser() { UserName = TxtUsername.Text, Email = TxtSign.Text };
            IdentityResult result =  manager.Create(user, Txtpassword.Text);

            IdentityRole endUserRole = new IdentityRole("admin");

            roleManager.Create(endUserRole);
          manager.AddToRole(user.Id, "admin");

            if (result.Succeeded)
            {
                Server.Transfer("Login.aspx", true);
            }
            else
            {
                LitRegister.Text = "An error has occured." + result.Errors.FirstOrDefault();
            }
        }
    }
}