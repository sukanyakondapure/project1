<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DriverMaster.master"
    AutoEventWireup="true" CodeFile="AddExpences.aspx.cs" Inherits="DriverPages_AddExpences" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
        <ContentTemplate>
            <table>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtDate" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtBoxDate" runat="server" Width="100%" AutoPostBack="True" ontextchanged="TxtBoxDate_TextChanged1" 
                            ></asp:TextBox>
                        <asp:CalendarExtender ID="TxtBoxDate_CalendarExtender" runat="server" Format="dd/MM/yyyy"
                            TargetControlID="TxtBoxDate">
                        </asp:CalendarExtender>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date required..."
                            ControlToValidate="TxtBoxDate" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtBusno" runat="server" Text="Bus Number"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListBusno" Width=100% runat="server" 
                            
                            Style="height: 22px" AutoPostBack="True" 
                            onselectedindexchanged="DropDownListBusno_SelectedIndexChanged1" 
                            DataSourceID="SqlDataSource3" DataTextField="Bus_number" DataValueField="Bus_id"  
                             >
                              
                        </asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:SMTConnectionString3 %>" 
                            SelectCommand="SELECT [Bus_id], [Bus_number] FROM [BUS_registerationTable]">
                        </asp:SqlDataSource>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="select any option ..." ControlToValidate="DropDownListBusno" 
                            InitialValue="0" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="height: 59px">
                        <asp:Label ID="TxtRouteNm" runat="server" Text="Route Name"></asp:Label>
                    </td>
                    <td style="height: 59px">
                        <asp:DropDownList ID="DropDownListRouteNm" Width="100%" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="RouteName" AppendDataBoundItems="true"  
                            DataValueField="RouteID"  >
                           <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>" 
                            SelectCommand="SELECT [RouteID],[RouteName] FROM [AddNewRouteTable]"></asp:SqlDataSource>
                    </td>
                    <td style="height: 59px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="choose any option..." ControlToValidate="DropDownListRouteNm" 
                            InitialValue="0" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtCreditStatus" runat="server" Text="Credit Status"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBoxCreditStatus" runat="server" OnCheckedChanged="CheckBoxCreditStatus_CheckedChanged"
                            AutoPostBack="True" />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtCreditTo" runat="server" Text="CreditTo"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListCreditTo" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="PetrolPumpName" AppendDataBoundItems="true" DataValueField="PetrolPump_Id"
                            Enabled="False" Width="100%" 
                           >
                            <asp:ListItem Value="0">---Select---</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMTConnectionString2 %>"
                            SelectCommand="SELECT * FROM [PetrolPumpTable]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtTypeOfExpences" runat="server" Text="Type Of Expences"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListTypeOfExpences" runat="server" Width="100%" 
                            AutoPostBack="True" 
                            onselectedindexchanged="DropDownListTypeOfExpences_SelectedIndexChanged">
                            <asp:ListItem Value="0">---Select---</asp:ListItem>
                            <asp:ListItem Value="1">Diesel</asp:ListItem>
                            <asp:ListItem Value="2">Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="Select any one Option..." 
                            ControlToValidate="DropDownListTypeOfExpences" Text="*" ForeColor="Red" 
                            InitialValue="0"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtLitter" runat="server" Text="Litter"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtBoxLitter" runat="server" Width="100%" AutoPostBack="True" 
                            OnTextChanged="TxtBoxLitter_TextChanged" Enabled="False">0</asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field required to fill"
                            ForeColor="Red" ControlToValidate="TxtBoxLitter">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtPricePerLitter" runat="server" Text="Price For Per Litter"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtBoxPricePerLitter" runat="server" Style="margin-left: 0px" Width="100%"
                            AutoPostBack="True" OnTextChanged="TxtBoxPricePerLitter_TextChanged" 
                            Enabled="False">0</asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Price required"
                            ForeColor="Red" ControlToValidate="TxtBoxPricePerLitter">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtTotalAmount" runat="server" Text="Total Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxTotAmount" runat="server" Width="100%" ReadOnly="True" 
                            Enabled="false" ontextchanged="TextBoxTotAmount_TextChanged" >0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtExpencesSummary" runat="server" Text="Expences Summary"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtBoxExpencesSummary" runat="server" TextMode="MultiLine" Height="39px"
                            Width="100%" Style="margin-bottom: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="TxtTotalAmount2" runat="server" Text="Total Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxTotalAmount2" runat="server" Width="100%">0</asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
