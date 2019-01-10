using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Author: Shandine Facey

namespace Registration
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            Models.Profile A = new Models.Profile();
            A.FirstName = txtFirstName.Text;
            A.LastName = txtLastName.Text;
            A.Image = "";
            A.Email = txtEmail.Text;
            A.Middlename = txtMiddleName.Text;
            A.schoolid = Convert.ToInt32(txtIdNumber.Text);
            A.Street = txtstreet.Text;
            A.Town = txttown.Text;
            A.Parish = txtparish.Text;
          //  int sid = Models.Business.Profile_Insert(A.FirstName, A.LastName, A.Image, A.Middlename, A.schoolid, A.Street, A.Town, A.Parish,A.Email);


          

            Session["Applicant"] = A;
            Response.Redirect("Next.aspx");
        }
    }
}