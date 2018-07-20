<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewTaxDetails.aspx.cs" Inherits="AdminPages_ViewTaxDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Bus_id" DataSourceID="SqlDataSource1" 
        onrowdatabound="GridView1_RowDataBound">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Bus_id" HeaderText="Bus_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Bus_id" />
            <asp:BoundField DataField="Bus_number" HeaderText="Bus_number" 
                SortExpression="Bus_number" />
            <asp:BoundField DataField="TaxDateValidFrom" HeaderText="TaxDateValidFrom" 
                SortExpression="TaxDateValidFrom" />
            <asp:BoundField DataField="TaxDateValidTo" HeaderText="TaxDateValidTo" 
                SortExpression="TaxDateValidTo" />
            <asp:BoundField DataField="InsuranseDateValidFrom" 
                HeaderText="InsuranseDateValidFrom" SortExpression="InsuranseDateValidFrom" />
            <asp:BoundField DataField="InsuranseDateValidTo" 
                HeaderText="InsuranseDateValidTo" SortExpression="InsuranseDateValidTo" />
            <asp:BoundField DataField="PermitDateValidFrom" 
                HeaderText="PermitDateValidFrom" SortExpression="PermitDateValidFrom" />
            <asp:BoundField DataField="PermitDateValidTo" HeaderText="PermitDateValidTo" 
                SortExpression="PermitDateValidTo" />
            <asp:BoundField DataField="PUCDateValidFrom" HeaderText="PUCDateValidFrom" 
                SortExpression="PUCDateValidFrom" />
            <asp:BoundField DataField="PUCDateValidTo" HeaderText="PUCDateValidTo" 
                SortExpression="PUCDateValidTo" />
            <asp:BoundField DataField="FitnessDateValidFrom" 
                HeaderText="FitnessDateValidFrom" SortExpression="FitnessDateValidFrom" />
            <asp:BoundField DataField="FitnessDateValidTo" HeaderText="FitnessDateValidTo" 
                SortExpression="FitnessDateValidTo" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
        DeleteCommand="DELETE FROM [BUS_registerationTable] WHERE [Bus_id] = @Bus_id" 
        InsertCommand="INSERT INTO [BUS_registerationTable] ([Bus_number], [TaxDateValidFrom], [TaxDateValidTo], [InsuranseDateValidFrom], [InsuranseDateValidTo], [PermitDateValidFrom], [PermitDateValidTo], [PUCDateValidFrom], [PUCDateValidTo], [FitnessDateValidFrom], [FitnessDateValidTo]) VALUES (@Bus_number, @TaxDateValidFrom, @TaxDateValidTo, @InsuranseDateValidFrom, @InsuranseDateValidTo, @PermitDateValidFrom, @PermitDateValidTo, @PUCDateValidFrom, @PUCDateValidTo, @FitnessDateValidFrom, @FitnessDateValidTo)" 
        SelectCommand="SELECT [Bus_id], [Bus_number],[TaxDateValidFrom], [TaxDateValidTo], [InsuranseDateValidFrom], [InsuranseDateValidTo], [PermitDateValidFrom], [PermitDateValidTo], [PUCDateValidFrom], [PUCDateValidTo], [FitnessDateValidFrom], [FitnessDateValidTo] FROM [BUS_registerationTable]" 
        UpdateCommand="UPDATE [BUS_registerationTable] SET [Bus_number] = @Bus_number, [TaxDateValidFrom] = @TaxDateValidFrom, [TaxDateValidTo] = @TaxDateValidTo, [InsuranseDateValidFrom] = @InsuranseDateValidFrom, [InsuranseDateValidTo] = @InsuranseDateValidTo, [PermitDateValidFrom] = @PermitDateValidFrom, [PermitDateValidTo] = @PermitDateValidTo, [PUCDateValidFrom] = @PUCDateValidFrom, [PUCDateValidTo] = @PUCDateValidTo, [FitnessDateValidFrom] = @FitnessDateValidFrom, [FitnessDateValidTo] = @FitnessDateValidTo WHERE [Bus_id] = @Bus_id">
        <DeleteParameters>
            <asp:Parameter Name="Bus_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Bus_number" Type="String" />
            <asp:Parameter DbType="Date" Name="TaxDateValidFrom" />
            <asp:Parameter DbType="Date" Name="TaxDateValidTo" />
            <asp:Parameter DbType="Date" Name="InsuranseDateValidFrom" />
            <asp:Parameter DbType="Date" Name="InsuranseDateValidTo" />
            <asp:Parameter DbType="Date" Name="PermitDateValidFrom" />
            <asp:Parameter DbType="Date" Name="PermitDateValidTo" />
            <asp:Parameter DbType="Date" Name="PUCDateValidFrom" />
            <asp:Parameter DbType="Date" Name="PUCDateValidTo" />
            <asp:Parameter DbType="Date" Name="FitnessDateValidFrom" />
            <asp:Parameter DbType="Date" Name="FitnessDateValidTo" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Bus_number" Type="String" />
            <asp:Parameter DbType="Date" Name="TaxDateValidFrom" />
            <asp:Parameter DbType="Date" Name="TaxDateValidTo" />
            <asp:Parameter DbType="Date" Name="InsuranseDateValidFrom" />
            <asp:Parameter DbType="Date" Name="InsuranseDateValidTo" />
            <asp:Parameter DbType="Date" Name="PermitDateValidFrom" />
            <asp:Parameter DbType="Date" Name="PermitDateValidTo" />
            <asp:Parameter DbType="Date" Name="PUCDateValidFrom" />
            <asp:Parameter DbType="Date" Name="PUCDateValidTo" />
            <asp:Parameter DbType="Date" Name="FitnessDateValidFrom" />
            <asp:Parameter DbType="Date" Name="FitnessDateValidTo" />
            <asp:Parameter Name="Bus_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

