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
    public partial class Contact : System.Web.UI.Page
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

        protected void Cbutton_btn(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Contact" + "(email,query)values(@Email,@Query)", con);
            cmd.Parameters.AddWithValue("@Email", CEmail.Value);
            cmd.Parameters.AddWithValue("@Query", query.Value);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your query has been recorded successfully.')</script>");
            Response.Redirect("home.html");
        }
    }
}