using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration.Applicants
{
    public partial class Next : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Models.Application a = new Models.Application();
            //a.characteristics = Textchara.text;
            a.dorm = ddldorm.SelectedValue;
            a.faculty = ddlFaculty.SelectedValue;


            Session["Application"] = a ;
            Response.Redirect("Display.aspx");
        }
    }
}