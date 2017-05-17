using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grande_Collecte
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkBtnInst_Click(object sender, EventArgs e)

        {
            ProductDataSource.InsertParameters["ProductName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Txtname")).Text;
            ProductDataSource.InsertParameters["ProductPrice"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Txtprice")).Text;
            ProductDataSource.InsertParameters["ProductStock"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Txtstock")).Text;
            ProductDataSource.Insert();
        }

    }
}