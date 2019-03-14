using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication19
{
    public partial class home : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["un"] ==null )
                Response.Redirect("login.aspx");
            else
            {
                Label1.Text = Session["un"].ToString();
            }
        }

        /*protected void Button1_Click(object sender, EventArgs e)
        {

            Session["cui"] = DropDownList2.SelectedValue;
            Session["type"] = DropDownList1.SelectedValue;
            Session["price"] = DropDownList3.SelectedValue;
            Session["cuiv"] = DropDownList2.SelectedItem;
            Session["typev"] = DropDownList1.SelectedItem;
            Session["pricev"] = DropDownList3.SelectedItem;
            Response.Redirect("menu.aspx");
        }*/

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["cui"] = DropDownList2.SelectedValue;
            Session["type"] = DropDownList1.SelectedValue;
            Session["price"] = DropDownList3.SelectedValue;
            Session["cuiv"] = DropDownList2.SelectedItem;
            Session["typev"] = DropDownList1.SelectedItem;
            Session["pricev"] = DropDownList3.SelectedItem;
            Response.Redirect("menu.aspx");
        }
    }
}