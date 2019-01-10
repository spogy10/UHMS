using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Registration
{
    /// <summary>
    /// Summary description for ApprovalService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ApprovalService : System.Web.Services.WebService
    {

        [WebMethod]
        public Models.Profile GetEmailById(int studentid)
        {


            string cs = ConfigurationManager.ConnectionStrings["UBSConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SelectEmailById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@id", studentid);
                cmd.Parameters.Add(parameter);
                Models.Profile a = new Models.Profile();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    a.Email= reader["email"].ToString();


                }

                return a;



            }


        }
    }
}
