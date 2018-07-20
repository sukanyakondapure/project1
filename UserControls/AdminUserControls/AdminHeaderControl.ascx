<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminHeaderControl.ascx.cs" Inherits="User_Controls_AdminHeaderControl" %>
<style type="text/css">
    .style1
    {
        width: 601px;
    }
    .style2
    {
        width: 354px;
        height: 55px;
    }
</style>
<table style="width: 612px; height: 139px; margin-left: 0px;">
<tr >
<td class="style1" colspan="2">
<div style="border: thick solid #000099; width: 593px; "> 
<div style=" width:100%; float:right; text-align:right">

    Welcome:
    <asp:LoginName ID="LoginName1" runat="server" />
&nbsp;&nbsp;
    <asp:LoginStatus ID="LoginStatus1" runat="server" 
        LogoutPageUrl="~/MainPages/Home.aspx" />

    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Images/AdminImages/download4.jpg" Width="100%" 
        Height="127px" />

    </div>   
</div>
    
</td>
</tr>
<tr>
<td class="style2">
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" 
        BackColor="#B5C7DE" BorderColor="#CC0000" 
             BorderStyle="Solid" BorderWidth="1px" DynamicHorizontalOffset="2" 
             Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="#284E98" 
             StaticSubMenuIndent="10px" DataSourceID="SiteMapDataSource1">
             <DataBindings>
                 <asp:MenuItemBinding DataMember="SiteMapNode" NavigateUrlField="Url" 
                     TextField="Title" ToolTipField="Description" />
             </DataBindings>
             <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
             <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <DynamicMenuStyle BackColor="#B5C7DE" />
             <DynamicSelectedStyle BackColor="#507CD1" />
             <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
             <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <StaticSelectedStyle BackColor="#507CD1" />
    </asp:Menu>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" 
        ShowStartingNode="False" />
    </td>
    <td>
        <asp:LinkButton ID="lbldriverpanel" runat="server" 
        onclick="lbldriverpanel_Click" BackColor="#333399" CausesValidation="False" 
            Font-Bold="True" ForeColor="White" Height="24px" Width="140px" 
            BorderColor="#333399" BorderStyle="Solid" 
            PostBackUrl="~/DriverPages/AddCollection.aspx">Go To Driver Panel</asp:LinkButton>
        </td>
</tr>
</table>
<p>
    &nbsp;</p>
