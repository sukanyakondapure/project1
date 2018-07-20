using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class DriverPages_AddExpences : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

      //  TxtBoxDate.Text = DateTime.Now.ToShortDateString();
    }
    protected void CheckBoxCreditStatus_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBoxCreditStatus.Checked == true)
        {
            DropDownListCreditTo.Enabled = true;
        }
        else
            DropDownListCreditTo.Enabled = false;


    }


    protected void TxtBoxPricePerLitter_TextChanged(object sender, EventArgs e)
    {
        if (TxtBoxPricePerLitter.Text != "" && TxtBoxLitter.Text != "")
        {
            int rs = Convert.ToInt32(TxtBoxPricePerLitter.Text) * Convert.ToInt32(TxtBoxLitter.Text);
            TextBoxTotAmount.Text = rs.ToString();
        }
    }
    protected void TxtBoxLitter_TextChanged(object sender, EventArgs e)
    {
        if (TxtBoxPricePerLitter.Text != "" && TxtBoxLitter.Text != "")
        {
            int rs = Convert.ToInt32(TxtBoxPricePerLitter.Text) * Convert.ToInt32(TxtBoxLitter.Text);
            TextBoxTotAmount.Text = rs.ToString();
        }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        DateTime date = Convert.ToDateTime(TxtBoxDate.Text,CultureInfo.GetCultureInfo ("hi-IN").DateTimeFormat);
        int busid = Convert.ToInt32(DropDownListBusno.SelectedValue);
        int routeid = Convert.ToInt32(DropDownListRouteNm.SelectedValue);
        int pumpid = Convert.ToInt32(DropDownListCreditTo.SelectedValue );
        int ltr = Convert.ToInt32(TxtBoxLitter.Text );
        int ppl = Convert.ToInt32(TxtBoxPricePerLitter.Text);
        int tamt = Convert.ToInt32(TextBoxTotAmount.Text);
        string expSummary = TxtBoxExpencesSummary.Text;
        int totalamt = Convert.ToInt32(TextBoxTotalAmount2.Text);
   

        string str = DropDownListTypeOfExpences.SelectedItem.Text;
       
       
        int aid;
        int max;
        DAL obj = new DAL();
        aid = obj.SelectAssignID(busid, routeid, date);
        if (str == "Diesel")
        {
            if (CheckBoxCreditStatus.Checked == true)
            {
                int res = obj.InsertIntoDieselCredit(pumpid, tamt);
                if (res > 0)
                {
                    max = obj.SelectMaxCreditID();
                    int res1 = obj.InsertIntoDieselExp(ppl, ltr, tamt, true, max, aid);
                    //if (res1 > 0)
                    //{
                        Response.Write("<script language=javascript>alert('Record inserted..')</script>");
                        clear();
                    //}
                    //else
                    //{
                    //    Response.Write("<script language=javascript>alert('Operation Failed..')</script>");
                    //}
                }

            }
            else
            {
                int res = obj.InsertIntoDieselCredit(pumpid, tamt);
                if (res > 0)
                {
                    max = obj.SelectMaxCreditID();
                    int res1 = obj.InsertIntoDieselExp(ppl, ltr, tamt, false, max, aid);
                    Response.Write("<script>alert('Operation has been done successfuly..')</script>");
                    clear();
                }
            }
        }
        else
        {
            int res2 = obj.InsertIntoOtherExpenseTable(expSummary, totalamt, aid);
            Response.Write("<script>alert('Operation has been done successfuly..')</script>");
            clear();
        }
  }

    protected void DropDownListTypeOfExpences_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownListTypeOfExpences.SelectedItem.Text == "Diesel")
        {
            TxtBoxLitter.Enabled = true;

            TxtBoxPricePerLitter.Enabled = true;
            TextBoxTotAmount.Enabled = true;
        }
        else if(DropDownListTypeOfExpences.SelectedItem.Text == "Other")
        {
            TxtBoxLitter.Enabled = false;
            TxtBoxPricePerLitter.Enabled = false;
            TextBoxTotAmount.Enabled = false;
        }
    }
    protected void TextBoxTotAmount_TextChanged(object sender, EventArgs e)
    {

    }
    void clear()
    {
        TxtBoxDate.Text = "";
        DropDownListBusno.SelectedIndex = 0;
        DropDownListRouteNm.SelectedIndex = 0;
        DropDownListCreditTo.SelectedIndex = 0;
        DropDownListTypeOfExpences.SelectedIndex = 0;
        TxtBoxLitter.Text = "0";
        TxtBoxPricePerLitter.Text = "0";
        TextBoxTotAmount.Text = "0";
        TxtBoxExpencesSummary.Text = "";
        TextBoxTotalAmount2.Text = "";
    }
   
   
   
    protected void DropDownListBusno_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    DAL obj1 = new DAL();
    protected void TxtBoxDate_TextChanged1(object sender, EventArgs e)
    {
      
    }
    protected void DropDownListBusno_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //obj1 = new DAL();
        //DataTable dt = obj1.SelectAssignedRoute(Convert.ToDateTime(TxtBoxDate.Text, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat), Convert.ToInt32(DropDownListBusno.SelectedValue));
        //DropDownListRouteNm.DataSource = dt;

        //DropDownListRouteNm.DataTextField = "RouteName";
        //DropDownListRouteNm.DataValueField = "RouteId";
        //DropDownListRouteNm.DataBind();
    }
}