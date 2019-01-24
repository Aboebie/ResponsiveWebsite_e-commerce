using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

public partial class AddBrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrandsRptr();
        }

    }

    private void BindBrandsRptr()
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            using(SqlCommand cmd = new SqlCommand("select * from tblbrands", con))
            {
                using(SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrBrands.DataSource = dtBrands;
                    rptrBrands.DataBind();
                }
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into tblbrands values('" + txtBrandName.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtBrandName.Text = string.Empty;
            lblAdd.Text = "Brand Successfully Added!";
            lblAdd.ForeColor = Color.Green;
        }
    }
}