using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSignUp_Click(object sender, EventArgs e)
    {
        if (tbUname.Text != "" && tbPass.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbCPass.Text != "")
        {

            if (tbPass.Text == tbCPass.Text)
            {

                string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("insert into Users values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Registation Successful!";
                    lblMsg.ForeColor = Color.Green;
                    Response.Redirect("SignIn.aspx");

                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Passwords do not match";
            }
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All Fields Are Mandatory";
        }
    }

}