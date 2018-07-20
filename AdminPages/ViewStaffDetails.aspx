<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewStaffDetails.aspx.cs" Inherits="AdminPages_ViewStaffDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="StaffID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="StaffID" HeaderText="StaffID" ReadOnly="True" 
                SortExpression="StaffID" InsertVisible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                SortExpression="Contact" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" 
                SortExpression="Experience" />
            <asp:BoundField DataField="LicenceNo" HeaderText="LicenceNo" 
                SortExpression="LicenceNo" />
            <asp:BoundField DataField="WorkSpecification" HeaderText="WorkSpecification" 
                SortExpression="WorkSpecification" />
            <asp:BoundField DataField="OpticalVision" HeaderText="OpticalVision" 
                SortExpression="OpticalVision" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
    SelectCommand="SELECT * FROM [STAFF_registrationTable]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
        SelectCommand="SELECT [StaffID], [Name], [Address], [Age], [Experience], [WorkSpecification], [LicenceNo], [OpticalVision], [Contact] FROM [STAFF_registrationTable]">
    </asp:SqlDataSource>
</asp:Content>

