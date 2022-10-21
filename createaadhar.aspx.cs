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
    public partial class createaadhar : System.Web.UI.Page
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

        protected void newbtn(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into NewAdhar" + "(Fullname,Username,Email,Phn_no,caste,country,birthday,city,district,homeaddress,gender)values(@Name,@Username,@Email,@mbno,@caste,@Country,@Date_of_birth,@City,@District,@Address,@Gender)", con);
            cmd.Parameters.AddWithValue("@Name", Fullname.Value);
            cmd.Parameters.AddWithValue("@Username", Username.Value);
            cmd.Parameters.AddWithValue("@Email", Email.Value);
            cmd.Parameters.AddWithValue("@mbno", Phn_no.Value);
            cmd.Parameters.AddWithValue("@caste", caste.Value);
            cmd.Parameters.AddWithValue("@Country", country.Value);
            cmd.Parameters.AddWithValue("@Date_of_birth", birthday.Value);
         
            cmd.Parameters.AddWithValue("@City", city.Value);
            cmd.Parameters.AddWithValue("@District", district.Value);
            cmd.Parameters.AddWithValue("@Address", homeaddress.Value);
            cmd.Parameters.AddWithValue("@Gender", gender.TagName);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('You have successfully register for new aadhar card.')</script>");
            Response.Redirect("home.html");
        }
    }
}