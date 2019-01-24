using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

public partial class AddCattegory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindBrandsRptr();
    }

    private void BindBrandsRptr()
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblcategories", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrCategory.DataSource = dtBrands;
                    rptrCategory.DataBind();
                }
            }
        }
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into tblCategories values('" + txtCatName.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtCatName.Text = string.Empty;
            lblAdd.Text = "Category Successfully Added!";
            lblAdd.ForeColor = Color.Green;
        }
    }
}