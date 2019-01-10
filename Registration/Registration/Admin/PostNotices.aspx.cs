using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration
{
    public partial class PostNotices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlrecp_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            String rep = ddlrecp.SelectedValue;
            String msg = txtmessage.Text;

           // SendEmail(rep, msg);
        }


        public static void SendEmail(string userid, string emailbody)
        {
            // Specify the from and to email address
            MailMessage mailMessage = new MailMessage("shandinefacey@gmail.com", userid);
            // Specify the email body
            mailMessage.Body = emailbody;
            // Specify the email Subject
            mailMessage.Subject = "Notices";

            // Specify the SMTP server name and post number
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            // Specify your gmail address and password
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "shandinefacey@gmail.com",
                Password = "Virtualization7"
            };
            // Gmail works on SSL, so set this property to true
            smtpClient.EnableSsl = true;
            // Finall send the email message using Send() method
            smtpClient.Send(mailMessage);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Home");
        }
    }
}