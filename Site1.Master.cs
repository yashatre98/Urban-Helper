using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication19
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (e.Item.Text == "Home")
                Response.Redirect("home.aspx");
            if (e.Item.Text == "Wallet")
                Response.Redirect("wallet.aspx");
            if (e.Item.Text == "Menu")
                Response.Redirect("menu.aspx");
            if (e.Item.Text == "My Details")
                Response.Redirect("mydetails.aspx");
        }
    }
}