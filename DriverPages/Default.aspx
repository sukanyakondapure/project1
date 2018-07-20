<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="DriverPages_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
        <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
            Enabled="True" Format="dd/MM/yyyy" TargetControlID="TextBox1">
        </asp:CalendarExtender>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Bus_number" 
            DataValueField="Bus_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SMTConnectionString %>" 
            SelectCommand="SELECT [Bus_id], [Bus_number] FROM [View1] WHERE ([Date] = @Date)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="Date" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="RouteName" 
            DataValueField="RouteID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SMTConnectionString %>" 
            SelectCommand="SELECT [RouteID], [RouteName], [Assign_Id] FROM [View1] WHERE (([Date] = @Date) AND ([Bus_id] = @Bus_id))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="Date" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Bus_id" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
