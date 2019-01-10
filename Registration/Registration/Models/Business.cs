using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
using System.Globalization;

namespace Registration.Models
{
    public class Business
    {

        [DataObjectMethod(DataObjectMethodType.Insert)]
        //public static int Profile_Insert(String FirstName, String LastName, String Image, String Middlename, int schoolid, String street, String town, String parish,String email)
        //{
        //    SqlConnection con = new SqlConnection(GetConnectionString());
        //    SqlCommand cmd = new SqlCommand("Profile_Insert", con);
        //    cmd.CommandType = CommandType.StoredProcedure;


        //    //Stored Procedure Parameters
        //    cmd.Parameters.AddWithValue("@id", 0).Direction = ParameterDirection.Output;
        //    cmd.Parameters.AddWithValue("@FirstName", FirstName);
        //    cmd.Parameters.AddWithValue("@LastName", LastName);
        //    cmd.Parameters.AddWithValue("@Image", Image);
        //    cmd.Parameters.AddWithValue("@Middlename", Middlename);
        //    cmd.Parameters.AddWithValue("@schoolid", schoolid);

        //    cmd.Parameters.AddWithValue("@street", street);
        //    cmd.Parameters.AddWithValue("@town", town);
        //    cmd.Parameters.AddWithValue("@parish", parish);
        //    cmd.Parameters.AddWithValue("@email", email);


        //    ////con.Open();
        //    //cmd.ExecuteNonQuery();
        //    //int outaccountholderid = Convert.ToInt32(cmd.Parameters["@id"].Value);
        //    //con.Close();

        //   // return outaccountholderid;


        //}



        //[DataObjectMethod(DataObjectMethodType.Insert)]
//public static int Application_Insert(int id,int idNumber,string status,string skills,string characteristics, string dorm,
//                    string school, DateTime dateOfBirth, string nationality )
//        {
//            SqlConnection con = new SqlConnection(GetConnectionString());
//            SqlCommand cmd = new SqlCommand("Application_Insert", con);
//            cmd.CommandType = CommandType.StoredProcedure;


//            //Stored Procedure Parameters
//            cmd.Parameters.AddWithValue("@id", 0).Direction = ParameterDirection.Output;
//            cmd.Parameters.AddWithValue("@idNumber", idNumber);
//            cmd.Parameters.AddWithValue("@status", status);
//            cmd.Parameters.AddWithValue("@skills", skills);
//            cmd.Parameters.AddWithValue("@characteristics", characteristics);
//            cmd.Parameters.AddWithValue("@dorm", dorm);

//            cmd.Parameters.AddWithValue("@school", school);
//            cmd.Parameters.AddWithValue("@dateOfBirth", dateOfBirth);
//            cmd.Parameters.AddWithValue("@nationality", nationality);

//            con.Open();
//            cmd.ExecuteNonQuery();
//            int applicationid = Convert.ToInt32(cmd.Parameters["@id"].Value);
//            con.Close();

//            return applicationid;


//        }


        //[DataObjectMethod(DataObjectMethodType.Select)]

        public String GetEmailById(int studentid)
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
                    a.Email = reader["email"].ToString();


                }

                return a.Email;



            }


        }


        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["UBSConnection"].ConnectionString;
        }

    }
}