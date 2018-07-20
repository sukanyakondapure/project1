using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DAL
/// </summary>
public class DAL
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    public DAL()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["SMTConnectionString"].ConnectionString);
    }
    public int InsertIntoAssignBusRoute(DateTime dt, int bid, int sid, int rid, int col, long sr, long er)
    {

        cmd = new SqlCommand("Up_InsertAssignBusRouteTable", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Date", dt);
        cmd.Parameters.AddWithValue("@Bus_id", bid);
        cmd.Parameters.AddWithValue("@Staff_id", sid);
        cmd.Parameters.AddWithValue("@Route_id", rid);
        cmd.Parameters.AddWithValue("@Collection", col);
        cmd.Parameters.AddWithValue("@Start_Reading", sr);
        cmd.Parameters.AddWithValue("@End_Reading", er);
        con.Open();
        int res = cmd.ExecuteNonQuery();
        con.Close();
        return res;
    }
    public int SelectAssignID(int bid, int rid, DateTime dt)
    {
        cmd = new SqlCommand("UP_SelectAIDfrombusroutetbl", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Bus_id", bid);
        cmd.Parameters.AddWithValue("@Route_id", rid);
        cmd.Parameters.AddWithValue("@Date", dt);
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            int aid = Convert.ToInt32(dr[0]);
            con.Close();
            return aid;
        }
        else
        {
            con.Close();
            return 0;

        }
        
        
    }
    public int InsertIntoDieselCredit(int pid,int tmnt)
    {
        cmd = new SqlCommand("UP_insertinDieselcredittbl", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Petrolpump_id", pid);
        cmd.Parameters.AddWithValue("@Total_amount", tmnt);
        con.Open();
        int res = cmd.ExecuteNonQuery();
        con.Close();
        return res;

    }
    public int SelectMaxCreditID()
    {
        cmd = new SqlCommand("UP_SelectMAXCreditID", con);
        cmd.CommandType = CommandType.StoredProcedure;
       
        con.Open();
        object obj = cmd.ExecuteScalar();
        con.Close();
        int res = Convert.ToInt32(obj);
        return res;

    }
    public int InsertIntoDieselExp( int ppl,int ltr,float amt,bool cs,int cid,int aid)
    {

        cmd = new SqlCommand("UP_DieselExptbl", con);
        cmd.CommandType = CommandType.StoredProcedure;
        
        cmd.Parameters.AddWithValue("@PricePerLiter",ppl);
        cmd.Parameters.AddWithValue("@Litter",ltr);
        cmd.Parameters.AddWithValue("@Amount", amt);
        cmd.Parameters.AddWithValue("@Credit_status", cs);
        cmd.Parameters.AddWithValue("@Credit_ID", cid);
        cmd.Parameters.AddWithValue("@Assign_ID", aid);
        con.Open();
        int res = cmd.ExecuteNonQuery();
        con.Close();
        return res;
    }
    public int InsertIntoOtherExpenseTable(string expsummary, int amt, int aid)
    {
        cmd = new SqlCommand("UP_OtherExptbl", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ExpenseSummary", expsummary);
        cmd.Parameters.AddWithValue("@Amount", amt);
        cmd.Parameters.AddWithValue("@Assign_Id", aid);
        con.Open();
        int res = cmd.ExecuteNonQuery();
        con.Close();
        return res;
    }
    public DataTable SelectAssignedBus(DateTime dt)
    {
        cmd = new SqlCommand("SELECT [Bus_id], [Bus_number] FROM [View1] WHERE ([Date] = @Date)", con);
        cmd.Parameters.AddWithValue("@Date", dt);
        con.Open();
        DataTable dtb = new DataTable();
        dtb.Load(cmd.ExecuteReader());
        con.Close();
        return dtb;

    }
    public DataTable SelectAssignedRoute(DateTime dt,int busid)
    {
        cmd = new SqlCommand("SELECT [RouteID], [RouteName] FROM [View1] WHERE ([Date] = @Date) and Bus_id=@id ", con);
        cmd.Parameters.AddWithValue("@Date", dt);
        cmd.Parameters.AddWithValue("@id", busid);
        con.Open();
        DataTable dtb = new DataTable();
        dtb.Load(cmd.ExecuteReader());
        con.Close();
        return dtb;

    }

   
}
