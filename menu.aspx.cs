using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication19
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["typev"].ToString();
            Label2.Text = Session["cuiv"].ToString();
            Label3.Text = Session["pricev"].ToString();
        }
    }
}