using System;
/*using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
*/
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication17
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("Insert Into login(un,p,c,w) Values(@un,@p,@c,@w)", conn);
                cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                cmd.Parameters.AddWithValue("@p", TextBox2.Text);
                cmd.Parameters.AddWithValue("@c", TextBox3.Text);
                cmd.Parameters.AddWithValue("@w", TextBox4.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                //Label1.Text = "Data Saved";
                Response.Redirect("login.aspx");
            }catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}