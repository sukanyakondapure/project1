using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class AdminPages_BusRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

        TextBox txtfrom = (TextBox)FormView1.FindControl("TextBox8");
        TextBox txtto = (TextBox)FormView1.FindControl("TextBox9");
        txtto.Text = Convert.ToDateTime(txtfrom.Text,CultureInfo.GetCultureInfo ("hi-IN").DateTimeFormat).AddMonths(6).ToShortDateString();
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {
        TextBox txtfrom = (TextBox)FormView1.FindControl("TextBox10");
        TextBox txtto = (TextBox)FormView1.FindControl("TextBox11");
        txtto.Text = Convert.ToDateTime(txtfrom.Text, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat).AddMonths(3).ToShortDateString();
    }
    protected void TextBox12_TextChanged(object sender, EventArgs e)
    {

        TextBox txtfrom = (TextBox)FormView1.FindControl("TextBox12");
        TextBox txtto = (TextBox)FormView1.FindControl("TextBox13");
        txtto.Text = Convert.ToDateTime(txtfrom.Text, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat).AddMonths(3).ToShortDateString();
    }
    protected void TextBox14_TextChanged(object sender, EventArgs e)
    {

        TextBox txtfrom = (TextBox)FormView1.FindControl("TextBox14");
        TextBox txtto = (TextBox)FormView1.FindControl("TextBox15");
        txtto.Text = Convert.ToDateTime(txtfrom.Text, CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat).AddMonths(6).ToShortDateString();
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        FormView1.DefaultMode = FormViewMode.ReadOnly;
    }
    protected void TxtTaxDateValidFrom_TextChanged(object sender, EventArgs e)
    {
        TextBox txtfrom = (TextBox)FormView1.FindControl("TxtTaxDateValidFrom");
        TextBox txtto = (TextBox)FormView1.FindControl("TextBox7");
        txtto.Text = Convert.ToDateTime(txtfrom.Text,CultureInfo.GetCultureInfo ("hi-IN").DateTimeFormat).AddMonths(6).ToShortDateString();
        
    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {

    }
}