<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DriverMaster.master"
    AutoEventWireup="true" CodeFile="AssignBusRoute.aspx.cs" Inherits="DriverPages_AssignBusRoute" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table cellpadding="6px" class="tabl">
        <tr>
            <td class="head1" colspan="2">
                Assign Bus And Route
                <br />
            </td>
        </tr>
        <tr class="size2">
            <td>
                &nbsp;&nbsp;&nbsp; Date
            </td>
            <td class="tdwidth2">
                <asp:TextBox ID="txtdate" runat="server" Height="21px" Width="128px"></asp:TextBox>
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                    TargetControlID="txtdate" TodaysDateFormat=" d  MMMM, yyyy">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="validdate" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="Please enter date" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="validdate_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="validdate">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr class="size2">
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;Bus No
            </td>
            <td class="tdwidth2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
                    ID="ddlno" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Bus_Number" 
                    DataValueField="Bus_ID" Height="16px" 
                    SkinId="ddl" 
                    style="margin-left: 0px" Width="128px" AppendDataBoundItems="true" 
                    AutoPostBack="True" onselectedindexchanged="ddlno_SelectedIndexChanged">
                    <asp:ListItem Value="0">---Select---</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
                    SelectCommand="SELECT [Bus_ID], [Bus_Number] FROM [BUS_registerationTable]">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validno" runat="server" 
                    ControlToValidate="ddlno" ErrorMessage="Please select bus no" ForeColor="Red" 
                    InitialValue="0" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="validno_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="validno">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr class="size2">
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;Driver Name :
            </td>
            <td class="tdwidth2">
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlname" 
                    runat="server" 
                    Height="16px" SkinId="ddl" Width="126px" DataSourceID="SqlDataSource2" 
                    DataTextField="Name" DataValueField="StaffID" AppendDataBoundItems="true">
                    <asp:ListItem Value="0">---Select---</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
                    SelectCommand="SELECT [StaffID], [Name] FROM [STAFF_registrationTable]">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validname" runat="server" 
                    ControlToValidate="ddlname" ErrorMessage="Please select driver name" 
                    ForeColor="Red" InitialValue="0" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="validname_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="validname">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr class="size2">
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;Assign Route
            </td>
            <td class="tdwidth2">
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
                    ID="ddlroute" runat="server" 
                    Height="16px" SkinId="ddl" Width="121px" DataSourceID="SqlDataSource3" 
                    DataTextField="RouteName" DataValueField="RouteID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
                    SelectCommand="SELECT [RouteID], [RouteName] FROM [AddNewRouteTable]">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validroute" runat="server" 
                    ControlToValidate="ddlroute" ErrorMessage="Please select route" ForeColor="Red" 
                    InitialValue="0" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="validroute_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="validroute">
                </asp:ValidatorCalloutExtender>
                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr class="size2">
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;Start Reading
            </td>
            <td class="tdwidth2">
                &nbsp;&nbsp;<asp:TextBox ID="txtstart" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validreading" runat="server" 
                    ControlToValidate="txtstart" ErrorMessage="Please enter start reading" 
                    ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="validreading_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="validreading">
                </asp:ValidatorCalloutExtender>
        <%--<asp:RegularExpressionValidator ID="validsreading" runat="server" 
                ControlToValidate="txtstart" ErrorMessage="Please enter only numbers" 
                ForeColor="Red" SetFocusOnError="True" ValidationExpression="/d">*</asp:RegularExpressionValidator>    
           <asp:ValidatorCalloutExtender ID="validsreading_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="validsreading">
            </asp:ValidatorCalloutExtender>--%>
            </td>
        </tr>
        <tr>
            <td class="endtd2" colspan="2">
                <asp:Button ID="btnadd" runat="server" 
                    SkinId="btncolor2" Text="Add" onclick="btnadd_Click" />
                &nbsp;&nbsp; &nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>
