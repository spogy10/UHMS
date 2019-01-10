using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Models.AccountHolder a = new Models.AccountHolder();
            // a.firstname = txtFirstname.Text;
            // a.lastname = txtLastname.Text;
            // a.street = txtStreet.Text;
            // a.city = txtCity.Text;
            // a.parish = txtParish.Text;
            // a.accountType = ddlAccountType.Text;
            // a.deposit = Convert.ToDecimal(txtDeposit.Text);

            // int accountTypeId = Convert.ToInt32( ddlAccountType.SelectedValue);


            // //Inserts the Customers information
            // int customerId;

            // customerId = Models.Business.Accountholder_Insert(a.firstname, a.lastname, a.street, a.city, a.parish);




            // int accountid;
            // Models.Account b = new Models.Account();
            // b.type = accountTypeId;
            // b.name = a.firstname +"."+ a.lastname;

            // b.balance = 0.00m;
            // b.balance = b.balance + a.deposit;
            // accountid = Models.Business.Account_Insert(b.type, b.name, b.balance);
            //// b.balance = Models.Business.Balance_Select(accountid);//pull the balance from the database with the account id

            // int TransactionId;

            // TransactionId = Models.Business.Transaction_Insert(accountid, b.balance, "Deposit", a.deposit);

            // String accountno = Models.Business.Accountnumber(accountid);
            // String cardnum = Models.Business.GetCardnumber(accountid);


            //// accountno = Models.Business.Accountno_Select(accountid);

            // a.accountNumber = accountno;
            // a.cardNumber = cardnum;
            // a.balance = Models.Business.GetBalance(accountid);
            // Session["AccountHolder"] = a;


          //  SendEmail(txtemail.Text,"Your payment was received");

            Response.Redirect("Payment_Display.aspx");

        }

        public static void SendEmail(string userid, string emailbody)
        {
            // Specify the from and to email address
            MailMessage mailMessage = new MailMessage("shandinefacey@gmail.com", userid);
            // Specify the email body
            mailMessage.Body = emailbody;
            // Specify the email Subject
            mailMessage.Subject = "Payment Received!";

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