<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DriverMaster.master" AutoEventWireup="true" CodeFile="ViewBusDetails.aspx.cs" Inherits="DriverPages_ViewBusDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
 <asp:UpdatePanel runat="server" ID="UpdatePanel2">
 <ContentTemplate>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Bus_id" DataSourceID="SqlDataSource1" AllowSorting="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="View full details" />
            <asp:BoundField DataField="Bus_id" HeaderText="Bus_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Bus_id" />
            <asp:BoundField DataField="Bus_number" HeaderText="Bus_number" 
                SortExpression="Bus_number" />
            <asp:BoundField DataField="Model_number" HeaderText="Model_number" 
                SortExpression="Model_number" />
            <asp:BoundField DataField="Milage" HeaderText="Milage" 
                SortExpression="Milage" />
            <asp:BoundField DataField="Bus_type" HeaderText="Bus_type" 
                SortExpression="Bus_type" />
            <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                SortExpression="Capacity" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
        SelectCommand="SELECT [Bus_id], [Bus_number], [Model_number], [Milage], [Bus_type], [Capacity] FROM [BUS_registerationTable]">
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="174px" 
        AllowPaging="True" AutoGenerateRows="False" CellPadding="4" 
        DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="InsuranseDateValidTo" HeaderText="InsuranseDateValidTo" 
                SortExpression="InsuranseDateValidTo" />
            <asp:BoundField DataField="InsuranseDateValidFrom" HeaderText="InsuranseDateValidFrom" 
                SortExpression="InsuranseDateValidFrom" />
            <asp:BoundField DataField="PermitDateValidFrom" 
                HeaderText="PermitDateValidFrom" SortExpression="PermitDateValidFrom" />
            <asp:BoundField DataField="PermitDateValidTo" 
                HeaderText="PermitDateValidTo" SortExpression="PermitDateValidTo" />
            <asp:BoundField DataField="PUCDateValidTo" 
                HeaderText="PUCDateValidTo" SortExpression="PUCDateValidTo" />
            <asp:BoundField DataField="PUCDateValidFrom" HeaderText="PUCDateValidFrom" 
                SortExpression="PUCDateValidFrom" />
            <asp:BoundField DataField="FitnessDateValidFrom" HeaderText="FitnessDateValidFrom" 
                SortExpression="FitnessDateValidFrom" />
            <asp:BoundField DataField="FitnessDateValidTo" HeaderText="FitnessDateValidTo" 
                SortExpression="FitnessDateValidTo" />
            <asp:BoundField DataField="TaxDateValidFrom" 
                HeaderText="TaxDateValidFrom" SortExpression="TaxDateValidFrom" />
            <asp:BoundField DataField="TaxDateValidTo" HeaderText="TaxDateValidTo" 
                SortExpression="TaxDateValidTo" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
     <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
         ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
         SelectCommand="SELECT [InsuranseDateValidTo], [InsuranseDateValidFrom], [PermitDateValidFrom], [PermitDateValidTo], [PUCDateValidTo], [PUCDateValidFrom], [FitnessDateValidFrom], [FitnessDateValidTo], [TaxDateValidFrom], [TaxDateValidTo] FROM [BUS_registerationTable] WHERE ([Bus_id] = @Bus_id)">
         <SelectParameters>
             <asp:ControlParameter ControlID="GridView1" Name="Bus_id" 
                 PropertyName="SelectedValue" Type="Int32" />
         </SelectParameters>
     </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
        SelectCommand="SELECT [TaxDateValidFrom], [TaxDateValidTo], [InsuranseDateValidFrom], [InsuranseDateValidTo], [PermitDateValidFrom], [PermitDateValidTo], [PUCDateValidFrom], [PUCDateValidTo], [FitnessDateValidFrom], [FitnessDateValidTo] FROM [BUS_registerationTable] WHERE ([Bus_id] = @Bus_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Bus_id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

