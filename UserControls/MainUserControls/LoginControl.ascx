<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginControl.ascx.cs" Inherits="User_Controls_Main_User_Controls_LoginControl" %>
<link href="../../Styles/MainStyles/Login.css" rel="stylesheet" type="text/css" />
<table class="table">
    <tr>
        <td class="td" colspan="3">     
        Login
        </td>
    </tr>
    <tr>
        <td>
           &nbsp;<br />
&nbsp;<asp:Label ID="lbluname" runat="server" SkinID="white" Text="UserName :"></asp:Label>
        </td>
        <td >
           &nbsp;<br />
&nbsp;<asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            <br />
        </td>
        <td >
           &nbsp;<br />
&nbsp;<asp:RequiredFieldValidator ID="Valid_user" runat="server" ErrorMessage="Invalid user name... " ControlToValidate="txtuname" Text="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td >
           &nbsp;&nbsp;<br />
            <asp:Label ID="lblpwd" runat="server" SkinID="white" Text="Passward  :"></asp:Label>
        </td>
        <td>
           &nbsp;<br />
&nbsp;<asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
            <br />
        </td>
        <td >
           &nbsp;<br />
&nbsp;<asp:RequiredFieldValidator ID="Valid_pwd" runat="server" ErrorMessage="Invalid passward..." ControlToValidate="txtpwd" Text="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="td1"colspan="3">
            <asp:Button ID="btnlogin" runat="server" Text="Login"/>
        </td>
    </tr>
    <tr>
        <td class="td1" colspan="3">
            <asp:HyperLink ID="hlkforgetpwd" runat="server"  SkinID="yellow" 
                NavigateUrl="~/MainPages/Forgetpassward.aspx">Forgot Passward ?</asp:HyperLink>
        </td>
    </tr>
  </table> 