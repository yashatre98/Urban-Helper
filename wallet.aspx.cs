using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication19
{
    public partial class wallet : System.Web.UI.Page
    {
        public int b;
        SqlConnection conn;
        SqlCommand cmd;
        //SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["w"].ToString();
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            b = 0;
            b = b + (int)Session["w"]+int.Parse(TextBox1.Text);
            cmd = new SqlCommand("update login Set w=@w Where un=@un",conn);
            cmd.Parameters.AddWithValue("@w", b);
            cmd.Parameters.AddWithValue("@un", Session["un"].ToString());
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Session["w"] = b;
            Label1.Text = b.ToString();
            Response.Write("Money Added");

        }
    }
}