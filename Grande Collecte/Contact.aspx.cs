using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grande_Collecte
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("grandecollecteco5027lcb@gmail.com", "feey9595");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("grandecollecteco5027lcb@gmail.com", TxtEmail.Text);
            msg.Subject = "Name: " + TxtName.Text + "Subject: " + TxtSubject.Text;
            msg.Body = TxtMessage.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                LitMessage.Text = "<p>Successful! Please wait for our respond, We will try to reply as soon as possible</p>";
            }
            catch (Exception exp)
            {
                LitMessage.Text = "<p>Send failed: " + exp.Message + ";" + exp.InnerException + "</p>";
            }
        }
    }
}