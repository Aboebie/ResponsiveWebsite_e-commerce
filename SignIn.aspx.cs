﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Request.Cookies["UNAME"]!=null && Request.Cookies["PWD"] != null)
            {
                UserName.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox2.Checked = true;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using(SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("select * from Users where Username ='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                if (CheckBox2.Checked)
                {
                    Response.Cookies["UNAME"].Value = UserName.Text;
                    Response.Cookies["PWD"].Value = Password.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);


                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }
                string Utype;
                Utype = dt.Rows[0][5].ToString().Trim();

                if(Utype == "U")
                {
                    Session["USERNAME"] = UserName.Text;
                    if(Request.QueryString["rurl"]!=null)
                    {
                        if (Request.QueryString["rurl"] == "cart")
                        {
                            Response.Redirect("~/Cart.aspx");
                        }
                    }
                    else
                    {
                        Response.Redirect("~/UserHome.aspx");
                    }             
                }
                 if (Utype == "A")
                {
                    Session["USERNAME"] = UserName.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }
                 
            }
            else
            {
                lblError.Text = "Invalid Username or Password !";
            }
        }
    }

    protected void lbForgotPass_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPassword.aspx");
    }
}