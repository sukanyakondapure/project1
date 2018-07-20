<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master"
    AutoEventWireup="true" CodeFile="ViewCreditPaymentDetails.aspx.cs" Inherits="AdminPages_ViewCreditPaymentDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <asp:UpdatePanel runat="server" >
    <ContentTemplate>
    <div  style="text-align: center;">
        &nbsp;&nbsp;
        <table style="width: 600px; height: 75px; font-size: 16px; font-weight: bold;" cellpadding="2px">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="View Details" BackColor="Black" BorderColor="White"
                        BorderWidth="4px" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="32px"
                        Width="230px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Petrol Pump
                    Name<br />
                </td>
                <td align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:DropDownList ID="ddlppname" runat="server" Height="25px" Width="193px" AutoPostBack="True"
                        DataSourceID="SqlDataSource1" DataTextField="PetrolPumpName" 
                        DataValueField="PetrolPump_Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
                        SelectCommand="SELECT [PetrolPump_Id], [PetrolPumpName] FROM [PetrolPumpTable]">
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="btnpayment" runat="server"
                        CausesValidation="False" OnClick="btnpayment_Click">Make Payment</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
        </table>
        <asp:Panel ID="paypanel" runat="server" Visible="False">
            <table style="width: 600px; height: 75px; font-size: 16px; font-weight: bold;" cellpadding="2px">
                <tr>
                    <td align="left" style="width: 189px">
                        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Payment Date<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtpaydate" runat="server"></asp:TextBox>
                        <asp:CalendarExtender ID="txtpaydate_CalendarExtender" runat="server" Enabled="True"
                            TargetControlID="txtpaydate">
                        </asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter date"
                            ControlToValidate="txtpaydate" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="height: 80px; width: 189px;">
                        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Payment Amount<br />
                    </td>
                    <td style="height: 80px">
                        <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter amount"
                            ControlToValidate="txtamount" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:Button ID="btnadd" runat="server" Text="Add"  OnClick="btnadd_Click"
                            ValidationGroup="a1" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Cancel</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <br />
    <asp:Label ID="lblcredit" runat="server" Text="Credit Details"></asp:Label>
    <asp:GridView ID="creditgridview" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
        OnRowDataBound="creditgridview_RowDataBound" ShowFooter="True" 
        AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Bus_number" HeaderText="Bus_number" SortExpression="Bus_number" />
            <asp:BoundField DataField="PricePerLiter" HeaderText="PricePerLiter" 
                SortExpression="PricePerLiter" />
            <asp:BoundField DataField="Liters" HeaderText="Liters" 
                SortExpression="Liters" />
            <%--<asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />--%>
                <asp:TemplateField  HeaderText="Amount" 
                SortExpression="Amount"  >
                <ItemTemplate>
                 <%# Eval("Amount") %>
                </ItemTemplate>
                <FooterTemplate >
                    <asp:Label ID="lbltotal" runat="server" Text="Total"></asp:Label>
                </FooterTemplate>
                </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
        SelectCommand="SELECT [Date], [Bus_number], [PricePerLiter], [Liters], [Amount] FROM [CreditPaymentView] WHERE ([PetrolPump_Id] = @PetrolPump_Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlppname" Name="PetrolPump_Id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="lblpayment" runat="server" Text="Payment Details"></asp:Label>
    <asp:GridView ID="paymentgridview" runat="server" AutoGenerateColumns="False"
        DataSourceID="SqlDataSource3" 
        OnRowDataBound="paymentgridview_RowDataBound" ShowFooter="True"
        OnDataBound="paymentgridview_DataBound" AllowPaging="True" 
        AllowSorting="True" DataKeyNames="Payment_Id">
        <Columns>
            <%-- <asp:BoundField DataField="PaymentDate" HeaderText="PaymentDate" 
                 SortExpression="PaymentDate" />--%>
            <asp:BoundField DataField="Payment_Id" HeaderText="Payment_Id" 
                SortExpression="Payment_Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="PetrolPump_Id" HeaderText="PetrolPump_Id" 
                SortExpression="PetrolPump_Id" />
            <asp:BoundField DataField="PaymentDate" HeaderText="PaymentDate" 
                SortExpression="PaymentDate" />
           <%-- <asp:BoundField DataField="PaymentAmount" HeaderText="PaymentAmount" 
                SortExpression="PaymentAmount" />--%>
                 <asp:TemplateField  HeaderText="PaymentAmount" 
                SortExpression="Amount"  >
                <ItemTemplate>
                 <%# Eval("PaymentAmount")%>
                </ItemTemplate>
                <FooterTemplate >
                    <asp:Label ID="lblpaytotal" runat="server" Text="Total"></asp:Label>
                </FooterTemplate>
                </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
        SelectCommand="SELECT * FROM [PaymentTable] WHERE ([PetrolPump_Id] = @PetrolPump_Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlppname" Name="PetrolPump_Id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="lblbalanceAmt" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
