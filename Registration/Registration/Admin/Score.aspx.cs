using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Author: Shandine Facey

namespace Registration.RM
{
    public partial class Sort : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String email = ddlstudentid.SelectedValue;

           // SendEmail(email, "Congratulations! You have been admitted acceptance to UTech's Hall of Residence!Please pay your Boarding Committment Fee to accept offter!" +
              //  "" +
             //   "Admin");
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/Home");
        }


        public static void SendEmail(string userid, string emailbody)
        {
            // Specify the from and to email address
            MailMessage mailMessage = new MailMessage("shandinefacey@gmail.com", userid);
            // Specify the email body
            mailMessage.Body = emailbody;
            // Specify the email Subject
            mailMessage.Subject = "Congratulations!";

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
    }
}