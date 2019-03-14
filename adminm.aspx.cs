using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication19
{
    public partial class adminm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
             byte[] imgd = null;
            TextBox tb1 = (TextBox)GridView1.FooterRow.FindControl("txtdid");
            TextBox tb2 = (TextBox)GridView1.FooterRow.FindControl("txtdname");
            TextBox tb3 = (TextBox)GridView1.FooterRow.FindControl("txtdcui");
            TextBox tb4 = (TextBox)GridView1.FooterRow.FindControl("txtdtype");
            TextBox tb5 = (TextBox)GridView1.FooterRow.FindControl("txtdprice");
            FileUpload f1 = (FileUpload)GridView1.FooterRow.FindControl("fui");
            if(f1.HasFile==true)
            {
               
                imgd = new byte[f1.PostedFile.ContentLength];
                f1.PostedFile.InputStream.Read(imgd, 0, imgd.Length);
            }
            SqlDataSource1.InsertParameters[0].DefaultValue = tb1.Text;
            SqlDataSource1.InsertParameters[1].DefaultValue = tb2.Text;
            SqlDataSource1.InsertParameters[2].DefaultValue = tb3.Text;
            SqlDataSource1.InsertParameters[3].DefaultValue = tb4.Text;
            SqlDataSource1.InsertParameters[4].DefaultValue = tb5.Text;
            SqlDataSource1.InsertParameters[5].DefaultValue = 0.ToString();
            SqlDataSource1.Insert();
        }
    }
}