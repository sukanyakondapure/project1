<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DriverMaster.master"
    AutoEventWireup="true" CodeFile="AddCollection.aspx.cs" Inherits="DriverPages_AddCollection" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table>
        <tr>
            <td>
                <asp:Label ID="TxtDate" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxDate" runat="server" Width="100%"></asp:TextBox>
                <asp:CalendarExtender ID="TextBoxDate_CalendarExtender" runat="server" Enabled="True"
                    TargetControlID="TextBoxDate" Format="dd/MM/yyyy">
                </asp:CalendarExtender>
                &nbsp;
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date must be rwquired..."
                    ForeColor="Red" ControlToValidate="TextBoxDate">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TxtBusNo" runat="server" Text="Bus Number"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListBusNo" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="Bus_Number" DataValueField="Bus_ID" Width="100%" AppendDataBoundItems="true">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>"
                    SelectCommand="SELECT [Bus_ID], [Bus_Number] FROM [BUS_registerationTable]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Please choose one Option..." 
                    ControlToValidate="DropDownListBusNo" InitialValue="0" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TxtDriverNm" runat="server" Text="Driver Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListDriverNm" runat="server" Width="100%" DataSourceID="SqlDataSource3"
                    DataTextField="Name" DataValueField="StaffID" AppendDataBoundItems="true">
                <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>"
                    SelectCommand="SELECT [Name], [StaffID] FROM [STAFF_registrationTable]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Please Choose one option..." 
                    ControlToValidate="DropDownListDriverNm" InitialValue="0" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TxtRoute" runat="server" Text="Route"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListRoute" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="RouteName" DataValueField="RouteID" Width="100%" AppendDataBoundItems="true">
                   <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>"
                    SelectCommand="SELECT * FROM [AddNewRouteTable]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Please choose one Option..." 
                    ControlToValidate="DropDownListRoute" InitialValue="0" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TxtAmt" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxAmt" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Amount must be Enter..."
                    ControlToValidate="TextBoxAmt" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender"
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TxtEndReading" runat="server" Text="End Reading"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxEndReading" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="End Reading must be Required.."
                    ControlToValidate="TextBoxEndReading" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender"
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
    </table>
    <asp:Button ID="ButtonAdd" runat="server" Text="Add" 
    onclick="ButtonAdd_Click" />
</asp:Content>
