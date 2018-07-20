<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Headercontrol.ascx.cs" Inherits="Headercontroll" %>

<link href="../../Styles/MainStyles/headerctrl.css" rel="stylesheet" type="text/css" />
<table style =" width:100%">
        <tr>
            <td colspan="3"  >
                
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/Images/BackgroundImages/images/h1.jpg" Width="100%" />
                
            </td>
        </tr>
       
        <tr id="header">
            <td style="background-color: #990000"  >
            <marquee>Solapur Municipal Transportation is managed by Solapur Municipal Corporation.</marquee>
           
              <%--  |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" 
                    NavigateUrl="~/MainPages/Home.aspx">Home</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                 <asp:HyperLink ID="hlkstaffcontact" runat="server" ForeColor="White" 
                    NavigateUrl="~/MainPages/Staffcontact.aspx">Staff Contacts</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                 <asp:HyperLink ID="hlkhelp" runat="server" ForeColor="White" 
                    NavigateUrl="~/MainPages/Help.aspx">Help </asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>    --%>
                
            
        </tr>


    </table>