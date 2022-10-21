using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml.Linq;
namespace Addhar_management
{
    public partial class Uploaddocs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email_user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["Addhar"].ConnectionString;
                con.Open();
            }



        }

        protected void uploadbtn_Click(object sender, EventArgs e)
        {
            
           
            if (birthcertificate.PostedFile != null && leavingcertificate.PostedFile !=null && passportsize.PostedFile!=null && castecertificate.PostedFile!=null)
            {
                int bclength = birthcertificate.PostedFile.ContentLength;
                int lclength = leavingcertificate.PostedFile.ContentLength;
                int pslength = passportsize.PostedFile.ContentLength;
                int cclength = castecertificate.PostedFile.ContentLength;
                byte[] pic1 = new byte[bclength];
                byte[] pic2 = new byte[lclength];
                byte[] pic3 = new byte[pslength];
                byte[] pic4 = new byte[cclength];

                birthcertificate.PostedFile.InputStream.Read(pic1, 0, bclength);
                leavingcertificate.PostedFile.InputStream.Read(pic2, 0, lclength);
                passportsize.PostedFile.InputStream.Read(pic3, 0, pslength);
                castecertificate.PostedFile.InputStream.Read(pic4, 0, cclength);
                SqlCommand cmd = new SqlCommand("insert into Documents" + "(email,birthcertificate,leavingcertificate,passportsizeimage,castecertificate)values(@email,@birthcerti,@leavingcerti,@passportsize,@castecerti)", con);
                cmd.Parameters.AddWithValue("@email", Email.Value);
                cmd.Parameters.AddWithValue("@birthcerti",pic1);
                cmd.Parameters.AddWithValue("@leavingcerti", pic2);
                cmd.Parameters.AddWithValue("@passportsize", pic3);
                cmd.Parameters.AddWithValue("@castecerti", pic4);
                cmd.ExecuteNonQuery();
                
                Response.Write("<script>alert('You have successfully register for new aadhar card.')</script>");
                Response.Redirect("home.html");
            }
           // con.Close();





        }
    }
}