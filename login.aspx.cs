using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication17
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("Select un,w From login Where un=@un and p=@p", conn);
                cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                cmd.Parameters.AddWithValue("@p", TextBox2.Text);
                conn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (TextBox1.Text == dr["un"].ToString())
                    {
                        Session["un"] = dr["un"];
                        Session["w"] = dr["w"];
                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        Label1.Text = "Invalid Password/ User-Name";
                    }
                }
                conn.Close();
            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
       

        protected void Button3_Click1(object sender, EventArgs e)
        {

            cmd = new SqlCommand("Select * From admin Where un=@un and p=@p", conn);
            cmd.Parameters.AddWithValue("@un", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p", TextBox2.Text);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (TextBox1.Text == dr["un"].ToString())
                    Response.Redirect("ad.aspx");
            }
        }
    }
}