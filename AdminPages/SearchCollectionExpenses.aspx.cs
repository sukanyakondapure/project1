using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class AdminPages_SearchCollectionExpenses : System.Web.UI.Page
{
    int rownum;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SMTConnectionString"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    public DateTime dt1;
    //add bus no into dropdown from db 
    public void addddlitems()
    {
        con.Open();
        string str = "select Bus_number from BUS_registerationTable";

        dt = new DataTable();
        da = new SqlDataAdapter(str, con);

        da.Fill(dt);
        DataRow dr = dt.NewRow();
        dr[0] = "-----Select-----";
        dt.Rows.InsertAt(dr, 0);


        ddlbusno.DataTextField = "Bus_number";
        ddlbusno.DataValueField = "Bus_number";
        ddlbusno.DataSource = dt;
        ddlbusno.DataBind();

        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            addddlitems();
            ddlexpenses.Enabled = false;
        }
    }
    protected void chkenable_CheckedChanged(object sender, EventArgs e)
    {
        if (chkenable.Checked == true)
        {
            lbldateto.Enabled = true;
            lblfrom.Visible = true;
            validdateto.Enabled = true;
           // validdateto1.Enabled = true;
            txtdateto.Enabled = true;
        }
        else
        {
            lbldateto.Enabled = false;
            lblfrom.Visible = false;
            validdateto.Enabled = false;
           // validdateto1.Enabled = false;
            txtdateto.Enabled = false;
        }

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        //to search collection details
        if (ddlsearch.SelectedItem.Text == "Collections")
        {
            //to search collection between 2 selected dates
            if (chkenable.Checked == true)
            {
                string bno, dateto, datefrm;
                bno = ddlbusno.SelectedItem.Text;
                DateTime d1, d2;
                datefrm = txtdatefrom.Text;
                dateto = txtdateto.Text;
                d1 = Convert.ToDateTime(datefrm, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

                d2 = Convert.ToDateTime(dateto, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
                con.Open();
                string str = "select * from View1 where Bus_number='" + bno + "'and Date>=@dt1 and Date<=@dt2";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@dt1", d1);
                cmd.Parameters.AddWithValue("@dt2", d2);
                //to display collection details between 2 dates into gridview
                SqlDataReader dr = cmd.ExecuteReader();
                dt = new DataTable();
                dt.Load(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            // to search collection of selected date
            else
            {
                string datefrm;
                string bno;
                bno = ddlbusno.SelectedItem.Text;
                DateTime d1;
                datefrm = txtdatefrom.Text;
                //to convert date into date format of current system
                d1 = Convert.ToDateTime(datefrm, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
                string str = "select * from View1 where Date=@dt1 and Bus_number='" + bno + "'";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@dt1", d1);
                con.Open();
                //to display collection details of selected date into gridview
                SqlDataReader dr = cmd.ExecuteReader();
                dt = new DataTable();
                dt.Load(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }

        }
        //to search expenses details
        else
        {
            //to search disel expenses details
            if (ddlexpenses.SelectedItem.Text == "Disel")
            {
                //to search disel expenses between 2 dates
                if (chkenable.Checked == true)
                {
                    string bno, dateto, datefrm;
                    bno = ddlbusno.SelectedItem.Text;
                    DateTime d1, d2;
                    datefrm = txtdatefrom.Text;
                    dateto = txtdateto.Text;
                    //to convert date into date format of current system
                    d1 = Convert.ToDateTime(datefrm, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

                    d2 = Convert.ToDateTime(dateto, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
                    con.Open();
                    string str = "select * from DiselExpView where Bus_number='" + bno + "'and Date>=@dt1 and Date<=@dt2";
                    cmd = new SqlCommand(str, con);
                    cmd.Parameters.AddWithValue("@dt1", d1);
                    cmd.Parameters.AddWithValue("@dt2", d2);
                    //to display disel expenses details between 2 dates into gridview
                    SqlDataReader dr = cmd.ExecuteReader();
                    dt = new DataTable();
                    dt.Load(dr);
                    GridView1.DataSource = dt;

                    GridView1.DataBind();
                    con.Close();
                }
                //to search disel expenses of selected date
                else
                {
                    string datefrm;
                    string bno;
                    bno = ddlbusno.SelectedItem.Text;
                    DateTime d1;
                    datefrm = txtdatefrom.Text;
                    //to convert date into date format of current system
                    d1 = Convert.ToDateTime(datefrm, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
                    string str = "select * from DiselExpView where Date=@dt1 and Bus_number='" + bno + "'";
                    cmd = new SqlCommand(str, con);
                    cmd.Parameters.AddWithValue("@dt1", d1);
                    con.Open();
                    //to display disel expenses details of selected date into gridview
                    SqlDataReader dr = cmd.ExecuteReader();
                    dt = new DataTable();
                    dt.Load(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    con.Close();
                }
            }
            else
            {
                //to search other expenses between 2 dates
                if (chkenable.Checked == true)
                {
                    string bno, dateto, datefrm;
                    bno = ddlbusno.SelectedItem.Text;
                    DateTime d1, d2;
                    datefrm = txtdatefrom.Text;
                    dateto = txtdateto.Text;
                    d1 = Convert.ToDateTime(datefrm, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

                    d2 = Convert.ToDateTime(dateto, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
                    con.Open();
                    string str = "select * from OtherExpView where Bus_number='" + bno + "'and Date>=@dt1 and Date<=@dt2";
                    cmd = new SqlCommand(str, con);
                    cmd.Parameters.AddWithValue("@dt1", d1);
                    cmd.Parameters.AddWithValue("@dt2", d2);
                    //to display other expenses details between 2 dates into gridview
                    SqlDataReader dr = cmd.ExecuteReader();
                    dt = new DataTable();
                    dt.Load(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    con.Close();
                }
                //to search other expenses of selected date
                else
                {
                    string datefrm;
                    string bno;
                    bno = ddlbusno.SelectedItem.Text;
                    DateTime d1;
                    datefrm = txtdatefrom.Text;
                    d1 = Convert.ToDateTime(datefrm, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
                    string str = "select * from OtherExpView where Date=@dt1 and Bus_number='" + bno + "'";
                    cmd = new SqlCommand(str, con);
                    cmd.Parameters.AddWithValue("@dt1", d1);
                    con.Open();
                    //to display other expenses details of selected date into gridview
                    SqlDataReader dr = cmd.ExecuteReader();
                    dt = new DataTable();
                    dt.Load(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    con.Close();
                }
            }
        }
    }
    //to display dropdown of types of expenses on selection of search expenses
    protected void ddlsearch_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlsearch.SelectedItem.Text == "Expenses")
            ddlexpenses.Enabled = true;
        else
            ddlexpenses.Enabled = false;
    }
    //to display only date without time
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
           // DateTime dt1 = Convert.ToDateTime(GridView1.Rows[i].Cells[0].Text, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
            DateTime dt1 = Convert.ToDateTime(GridView1.Rows[i].Cells[0].Text);
            GridView1.Rows[i].Cells[0].Text = dt1.ToShortDateString();
        }
    }
}