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
    public partial class DisplayAdhar : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
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
                showAdhar();
                showupdateadhar();
                con.Close();
            }
        }
        public void showAdhar()
        {
            string command = "Select * from NewAdhar where Email='" + Session["email_user"] + "'";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            Newadhardisplay.DataSource = rdr;
            Newadhardisplay.DataBind();
            rdr.Close();
        }
        public void showupdateadhar()
        {
            string command = "Select * from Contact where email='" + Session["email_user"] + "'";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            QueryDisplay.DataSource = rdr;
            QueryDisplay.DataBind();
            rdr.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}