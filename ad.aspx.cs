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
    public partial class ad : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            byte[] imgd=null;
            TextBox tb1 = (TextBox)GridView1.FooterRow.FindControl("txtdid");
            TextBox tb2 = (TextBox)GridView1.FooterRow.FindControl("txtdname");
            TextBox tb3 = (TextBox)GridView1.FooterRow.FindControl("txtdcui");
            TextBox tb4 = (TextBox)GridView1.FooterRow.FindControl("txtdtype");
            TextBox tb5 = (TextBox)GridView1.FooterRow.FindControl("txtdprice");
            FileUpload f1 = (FileUpload)GridView1.FooterRow.FindControl("fui");
            if (f1.HasFile == true)
            {

                imgd = new byte[f1.PostedFile.ContentLength];
                f1.PostedFile.InputStream.Read(imgd, 0, imgd.Length);
            }
            SqlDataSource1.InsertParameters[0].DefaultValue = tb1.Text;
            SqlDataSource1.InsertParameters[1].DefaultValue = tb2.Text;
            SqlDataSource1.InsertParameters[2].DefaultValue = tb3.Text;
            SqlDataSource1.InsertParameters[3].DefaultValue = tb4.Text;
            SqlDataSource1.InsertParameters[4].DefaultValue = tb5.Text;
           // SqlDataSource1.InsertParameters[5].DefaultValue = 0.ToString();
            SqlDataSource1.Insert();
            save_img(imgd,int.Parse(tb1.Text));
        }
        public void save_img(byte[] arr,int id)
        {
            cmd = new SqlCommand("Update dish Set img=@img where dishid=@dishid", conn);
            cmd.Parameters.AddWithValue("@img", arr);
            cmd.Parameters.AddWithValue("@dishid", id);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }

        
    }
}