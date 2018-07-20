using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Configuration;

public partial class DriverPages_AssignBusRoute : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["SMTConnectionString"].ConnectionString);
        //txtdate.Text = DateTime.Now.ToString("dd/MM/yyyy h:mm:ss tt");
    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        //DateTime dt = DateTime.Now;
       // DateTime dt= DateTime .Parse(txtdate.Text,CultureInfo.CurrentCulture);
       // string dt = txtdate.Text;
        DateTime dt = Convert.ToDateTime(txtdate.Text,CultureInfo .GetCultureInfo ("hi-IN").DateTimeFormat);
        int bid= Convert .ToInt32 ( ddlno.SelectedValue);
        int sid = Convert.ToInt32(ddlname.SelectedValue);
        int rid = Convert.ToInt32(ddlroute.SelectedValue);
        long sr = Convert.ToInt64 (txtstart.Text);
        DAL obj = new DAL();
        int res = obj.InsertIntoAssignBusRoute(dt,bid,sid,rid,0,sr,0);
        if (res > 0)
        {
            txtdate.Text = "";
            ddlno.SelectedIndex = 0;
            ddlname.SelectedIndex = 0;
            ddlroute.SelectedIndex = 0;
            txtstart.Text = "";
        }
    }
    int scanbusid;
    protected void ddlno_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtstart.Text = "";
        con.Open();
        string s = "select Bus_id from BUS_registerationTable where Bus_number='" + ddlno.SelectedItem.Text + "'";
        cmd = new SqlCommand(s, con);
        scanbusid = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        int ereading;
        con.Open();
        try
        {
            string s3 = "select MAX(Assign_Id) from AssignBusRouteTable where Bus_id='" + scanbusid + "'";
            cmd = new SqlCommand(s3, con);
            int aid = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            con.Open();
            string s4 = "select End_Reading from AssignBusRouteTable where Assign_Id='" + aid + "'";
            cmd = new SqlCommand(s4, con);
            ereading = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            txtstart.Text = Convert.ToString(ereading);
        }
        catch (InvalidCastException ex)
        {

        }
    }
}