using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class DriverPages_AddCollection : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["SMTConnectionString"].ConnectionString);
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {

        //to convert string into date
        DateTime date = Convert.ToDateTime(TextBoxDate.Text, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "update AssignBusRouteTable set Collection=@Collection,End_Reading=@End_Reading where Date=@Date and Bus_id=@Bus_id and Route_id=@Route_id and Staff_id=@Staff_id";
        cmd.Parameters.AddWithValue("@Date", date);
        cmd.Parameters.AddWithValue("@Bus_id", DropDownListBusNo.SelectedValue);
        cmd.Parameters.AddWithValue("@Staff_id", DropDownListDriverNm.SelectedValue);
        cmd.Parameters.AddWithValue("@Route_id", DropDownListRoute.SelectedValue);
        cmd.Parameters.AddWithValue("@Collection", TextBoxAmt.Text);
        cmd.Parameters.AddWithValue("@End_Reading", Convert.ToInt32(TextBoxEndReading.Text));
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            //to display message of insertion
            Response.Write("<script language=javascript>alert('Inserted Successfully');</script>");
            clear();
        }
        con.Close();
    }

    private void clear()
    {
        TextBoxDate.Text = "";
        TextBoxAmt.Text = "";
        TextBoxEndReading.Text = "";
        DropDownListRoute.SelectedIndex = 0;
        DropDownListDriverNm.SelectedIndex = 0;
        DropDownListBusNo.SelectedIndex = 0;
    }
    protected void txtdate_TextChanged(object sender, EventArgs e)
    {
        Page.DataBind();
        //ddlno.Items.Clear();
        //ddlname.Items.Clear();
        //ddlroute.Items.Clear();
    }
}


