using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class AdminPages_ViewCreditPaymentDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SMTConnectionString"].ConnectionString);
    SqlCommand cmd;
    double totprice = 0;
    double totprice1 = 0;
    public void clear()
    {
        txtamount.Text = " ";
        txtpaydate.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnpayment_Click(object sender, EventArgs e)
    {
        paypanel.Visible = true;
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "insert into PaymentTable values(@PetrolPump_Id,@PaymentDate,@PaymentAmount)";
        cmd.Parameters.AddWithValue("@PetrolPump_Id", ddlppname.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@PaymentAmount", txtamount.Text);
        cmd.Parameters.AddWithValue("@PaymentDate", txtpaydate.Text);
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script language=javascript>alert('Inserted Successfuly');</script>");// to display message of insertion
            clear();
            paymentgridview.DataBind();
        }
        con.Close();
        paypanel.Visible = false;
    }
    protected void creditgridview_RowDataBound(object sender, GridViewRowEventArgs e)// to calculate total of credit amount field
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            double total = Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Amount"));
            totprice += total;
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label totalprice = (Label)e.Row.FindControl("lbltotal");
            totalprice.Text = String.Format("Total:{0}", totprice);
        }
    }
    protected void paymentgridview_RowDataBound(object sender, GridViewRowEventArgs e)//to calculate total of payment amount field
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            double total1 = Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "PaymentAmount"));
            totprice1 += total1;
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label totalprice1 = (Label)e.Row.FindControl("lblpaytotal");
            totalprice1.Text = String.Format("Total:{0}", totprice1);
        }
    }
    protected void paymentgridview_DataBound(object sender, EventArgs e)// to calculate balance amount
    {
        double bal;
        bal = totprice - totprice1;
        lblbalanceAmt.Text = "Balance Amount :" + Convert.ToString(bal);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        paypanel.Visible = false;
    }
    
}