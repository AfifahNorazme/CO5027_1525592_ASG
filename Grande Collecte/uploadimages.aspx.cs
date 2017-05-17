using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grande_Collecte
{
    public partial class uploadimages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String productId = Request.QueryString["ProductID"];

            String filename = productId + ".jpg";

            Image1.ImageUrl = "~/uplimages" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String productId = Request.QueryString["ProductID"];

            String filename = productId + ".jpg";

            String saveLocation = Server.MapPath("~/uplimages" + filename);

            FileUpload1.SaveAs(saveLocation);
        }
    }
}