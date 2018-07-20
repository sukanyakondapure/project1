<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DriverHeaderControl.ascx.cs" Inherits="User_Controls_DriverUserControls_DriverHeaderControl" %>
<table>
<tr>
<td class="td1" align="center" >
   
    <div style=" width:688px; 6; vertical-align: middle;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Welcome:
    <asp:LoginName ID="LoginName1" runat="server" />
&nbsp;&nbsp;
    <asp:LoginStatus ID="LoginStatus1" runat="server" 
        LogoutPageUrl="~/MainPages/Home.aspx" />

        <br />

        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/Images/BackgroundImages/images/clerk.png" />

    </div>
    
</td>
</tr>
<tr>
     <td> 
         <asp:Menu ID="Menu1" runat="server" DataSourceID="XmlDataSource1" 
             Orientation="Horizontal" BackColor="#B5C7DE" BorderColor="#CC0000" 
             BorderStyle="Solid" BorderWidth="1px" DynamicHorizontalOffset="2" 
             Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="#284E98" 
             StaticSubMenuIndent="10px">
             <DataBindings>
                 <asp:MenuItemBinding DataMember="siteMapNode" NavigateUrlField="url" 
                     TextField="title" ToolTipField="description" />
                 <asp:MenuItemBinding DataMember="siteMapNode" NavigateUrlField="url" 
                     TextField="title" ToolTipField="description" />
             </DataBindings>
             <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
             <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <DynamicMenuStyle BackColor="#B5C7DE" />
             <DynamicSelectedStyle BackColor="#507CD1" />
             <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
             <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <StaticSelectedStyle BackColor="#507CD1" />
         </asp:Menu>
         <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
             DataFile="~/DriverMenu.xml" XPath="siteMapNode/siteMapNode"></asp:XmlDataSource>
         <br />
    </td>
</tr>
</table>