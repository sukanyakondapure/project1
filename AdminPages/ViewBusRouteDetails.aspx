<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewBusRouteDetails.aspx.cs" Inherits="AdminPages_ViewBusRouteDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Date" HeaderText="Date" 
            SortExpression="Date" />
        <asp:BoundField DataField="Bus_number" HeaderText="Bus_number" 
            SortExpression="Bus_number" />
        <asp:BoundField DataField="Name" HeaderText="Name" 
            SortExpression="Name" />
        <asp:BoundField DataField="Contact" HeaderText="Contact" 
            SortExpression="Contact" />
        <asp:BoundField DataField="RouteName" HeaderText="RouteName" 
            SortExpression="RouteName" />
        <asp:BoundField DataField="Collection" HeaderText="Collection" 
            SortExpression="Collection" />
        <asp:BoundField DataField="Start_Reading" HeaderText="Start_Reading" 
            SortExpression="Start_Reading" />
        <asp:BoundField DataField="End_Reading" HeaderText="End_Reading" 
            SortExpression="End_Reading" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
        
        SelectCommand="SELECT [Date], [Bus_number], [Name], [Contact], [RouteName], [Collection], [Start_Reading], [End_Reading] FROM [View1]"></asp:SqlDataSource>
</asp:Content>

