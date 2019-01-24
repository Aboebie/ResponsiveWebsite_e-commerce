using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();

        // Load with Username information
        if (Session["USERNAME"] != null)
        {
            btnSignup.Visible = false;
            btnSignOut.Visible = true;
            btnSignin.Visible = false;
        }
        else
        {
            btnSignup.Visible = false;
            btnSignOut.Visible = false;
            btnSignin.Visible = true;
        }
    }

    public void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookiePID.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();
        }
        else
        {
            pCount.InnerText = 0.ToString();
        }


     }




    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}