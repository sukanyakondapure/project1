<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewBusDetails.aspx.cs" Inherits="AdminPages_ViewBusDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Bus_id">
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="View full Details" />
            <asp:BoundField DataField="Bus_id" HeaderText="Bus_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Bus_id" />
            <asp:BoundField DataField="Bus_number" HeaderText="Bus_number" 
                SortExpression="Bus_number" />
            <asp:BoundField DataField="Model_number" HeaderText="Model_number" 
                SortExpression="Model_number" />
            <asp:BoundField DataField="Bus_type" HeaderText="Bus_type" 
                SortExpression="Bus_type" />
            <asp:BoundField DataField="Milage" HeaderText="Milage" 
                SortExpression="Milage" />
            <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                SortExpression="Capacity" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
        SelectCommand="SELECT [Bus_id], [Bus_number], [Model_number], [Bus_type], [Milage], [Capacity] FROM [BUS_registerationTable]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView2" runat="server" DataSourceID="SqlDataSource3" 
        Height="50px" Width="125px">
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
</asp:Content>

