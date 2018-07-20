using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Controls_AdminHeaderControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbldriverpanel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DriverPages/AddExpences.aspx");
    }
}