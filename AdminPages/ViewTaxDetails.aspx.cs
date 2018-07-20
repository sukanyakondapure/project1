using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_ViewTaxDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        DateTime dt = DateTime.Now.AddDays(10);
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DateTime tto = (DateTime)DataBinder.Eval(e.Row.DataItem, "TaxDateValidTo");
            DateTime ito = (DateTime)DataBinder.Eval(e.Row.DataItem, "InsuranseDateValidTo");
            DateTime pto = (DateTime)DataBinder.Eval(e.Row.DataItem, "PermitDateValidTo");
            DateTime puto = (DateTime)DataBinder.Eval(e.Row.DataItem, "PUCDateValidTo");
            DateTime fto = (DateTime)DataBinder.Eval(e.Row.DataItem, "FitnessDateValidTo");
            if (tto <= dt)
            {
                e.Row.Cells[4].BackColor = System.Drawing.Color.Red;
            }
            if (ito <= dt)
            {
                e.Row.Cells[6].BackColor = System.Drawing.Color.Red;
            }
            if (pto <= dt)
            {
                e.Row.Cells[8].BackColor = System.Drawing.Color.Red;
            }
            if (puto <= dt)
            {
                e.Row.Cells[10].BackColor = System.Drawing.Color.Red;
            }
            if (fto <= dt)
            {
                e.Row.Cells[12].BackColor = System.Drawing.Color.Red;
            }
        }
    }
}