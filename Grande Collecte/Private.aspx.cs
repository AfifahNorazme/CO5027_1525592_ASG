using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grande_Collecte
{
    public partial class Private : System.Web.UI.Page
    {
        protected void Pageload(object sender, EventArgs e)
        {

        }

        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Server.Transfer("Login.aspx", true);

        }
    }
}