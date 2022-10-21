using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Addhar_management
{
    public partial class Updateadhar : System.Web.UI.Page
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

        protected void UpdateSubmit_btn(object sender, EventArgs e)
        {
          
            if (Oname.Value == Nname.Value && Oemail.Value == Nemail.Value && Ophnno.Value == Nphnno.Value && Ocaste.Value == Ncaste.Value && Ocity.Value == Ncity.Value && Odistrict.Value == Ndistrict.Value && Oaddress.Value == Naddress.Value)
            {
                Response.Write("No similar data allowed");
                Response.Redirect("Updateadhar.aspx");
            }                       
            else
            {
                SqlCommand cmd = new SqlCommand("insert into Updatedata" + "(Name,Email,mbno,caste,city,district,address)values(@Name,@Email,@mbno,@Caste,@City,@District,@Address)", con);
                cmd.Parameters.AddWithValue("@Name", Nname.Value);
                cmd.Parameters.AddWithValue("@Email", Nemail.Value);
                cmd.Parameters.AddWithValue("@mbno", Nphnno.Value);
                cmd.Parameters.AddWithValue("@Caste", Ncaste.Value);
                cmd.Parameters.AddWithValue("@City", Ncity.Value);
                cmd.Parameters.AddWithValue("@District", Ndistrict.Value);
                cmd.Parameters.AddWithValue("@Address", Naddress.Value);
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('You have successfully register.')</script>");
                Response.Redirect("home.html");
            }
        }
    }
}