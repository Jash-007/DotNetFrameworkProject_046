using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Addhar_management
{
    public partial class Register : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["addhar"].ConnectionString;
            con.Open();
        }

        protected void onRegister(object sender, EventArgs e)
        {
            SqlCommand main = new SqlCommand("Select count(*) from Registeration where pass='" + Password.Value + "'", con);
            SqlCommand mail = new SqlCommand("Select count(*) from Registeration where Email='" + email.Value + "'", con);
            main.Parameters.AddWithValue("@pass", Password.Value);
            mail.Parameters.AddWithValue("@Email", email.Value);
            if ((int)main.ExecuteScalar() > 0)
            {
                Response.Write("<style> padding: 20px background - color: #f44336 color: white margin - bottom: 15px </style>alert('Password Alreay Exists!!')");
            }
            else if ((int)mail.ExecuteScalar() > 0)
            {
                Response.Write("alert('Email address Alreay Exists!!')");
            }
            else
            {
                string pass = Password.Value;
                string con_pass = confirmPassword.Value;
                if (pass == con_pass)
                {
                    SqlCommand cmd = new SqlCommand("insert into Registeration" + "(Name,Email,mbno,Date_of_birth,pass)values(@Name,@Email,@mbno,@Date_of_birth,@pass)", con);
                    cmd.Parameters.AddWithValue("@Name", name.Value);
                    cmd.Parameters.AddWithValue("@Email", email.Value);
                    cmd.Parameters.AddWithValue("@mbno", Mobile.Value);
                    cmd.Parameters.AddWithValue("@Date_of_birth", dob_input.Value);
                    cmd.Parameters.AddWithValue("@pass", Password.Value);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('You have successfully register.')</script>");
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("('Password and Confirm Password do not match.')");

                }
            }
            //Label.Text = "Inserted";

        }
    }
}