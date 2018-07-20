<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master" AutoEventWireup="true" CodeFile="SearchCollectionExpenses.aspx.cs" Inherits="AdminPages_SearchCollectionExpenses" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="width: 606px">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
    <table class="tbl1" cellpadding="6">
    <tr >
    <td class ="tdhead" colspan="4">Search Collection & Expenses</td>
    </tr>
    <tr class ="trsize2">
    <td class="talign2">
       &nbsp;&nbsp; Bus No 
    </td>
    <td class="talign2">
        &nbsp;&nbsp;<asp:DropDownList ID="ddlbusno" runat="server" 
            Height="24px" Width="125px" style="margin-right: 0px">
        </asp:DropDownList>
       
        &nbsp;<asp:RequiredFieldValidator ID="validbusno" runat="server" 
        ErrorMessage="Please select bus no" ControlToValidate="ddlbusno" Width="16px" 
            InitialValue="0" ForeColor="red" Height="20px" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="validbusno_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="validbusno">
        </asp:ValidatorCalloutExtender>
    </td>
    </tr>
    <tr>
   <td class="talign2">
      &nbsp;&nbsp; Search For 
   </td>
   <td class="talign2">
   
    &nbsp;
    <asp:DropDownList ID="ddlsearch" runat="server"  Height="24px" 
           Width="125px" AutoPostBack="True" 
           onselectedindexchanged="ddlsearch_SelectedIndexChanged">
        <asp:ListItem Value="0">------- Select ------</asp:ListItem>
        <asp:ListItem Value="1">Collections</asp:ListItem>
        <asp:ListItem Value="2">Expenses</asp:ListItem>
    </asp:DropDownList>
       &nbsp;<asp:RequiredFieldValidator ID="validsearch" runat="server" 
        ErrorMessage="Please select search for" ControlToValidate="ddlsearch" 
           Width="16px" InitialValue="0" ForeColor="red" Height="25px" 
           SetFocusOnError="True">*</asp:RequiredFieldValidator>
       <asp:ValidatorCalloutExtender ID="validsearch_ValidatorCalloutExtender" 
           runat="server" Enabled="True" TargetControlID="validsearch">
       </asp:ValidatorCalloutExtender>
    </td>
   </tr>
      <tr>
   <td class="talign2">
      &nbsp;&nbsp; Type of Expenses
   </td>
   <td class="talign2">
       &nbsp;&nbsp;<asp:DropDownList ID="ddlexpenses" runat="server"  Height="24px" 
           Width="125px" Enabled="False" AutoPostBack="True" >
        <asp:ListItem Value="0">------- Select ------</asp:ListItem>
        <asp:ListItem Value="1">Disel</asp:ListItem>
        <asp:ListItem Value="2">Other</asp:ListItem>
    </asp:DropDownList>
       &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Please select type of expenses" ControlToValidate="ddlexpenses" 
           Width="17px" InitialValue="0" Enabled="False" ForeColor="red" 
           Height="19px" SetFocusOnError="True">*</asp:RequiredFieldValidator>
       <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
           runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
       </asp:ValidatorCalloutExtender>
    </td>
   </tr>
   <tr class ="trsize1">
   <td class="talign2"> 
      &nbsp;&nbsp; Date
      <asp:Label ID="lblfrom" runat="server" Text="From" 
        Visible="False" Height="22px" Width="34px" ></asp:Label>&nbsp;
   </td>
   <td class="talign2">
    
       &nbsp; 
       <asp:TextBox ID="txtdatefrom" runat="server" Height="21px" 
           Width="125px" ></asp:TextBox>
    <asp:CalendarExtender ID="cedatefrom" runat="server" Enabled="True"  TargetControlID="txtdatefrom" 
         Format="dd/MM/yyyy" TodaysDateFormat=" d  MMMM, yyyy">
    </asp:CalendarExtender>
    
       &nbsp;<asp:RequiredFieldValidator ID="validdatefrom" runat="server" 
           ErrorMessage="Please select date" ControlToValidate="txtdatefrom" 
           Width="16px" ForeColor="red" Height="24px" SetFocusOnError="True">*</asp:RequiredFieldValidator>
       <asp:ValidatorCalloutExtender ID="validdatefrom_ValidatorCalloutExtender" 
           runat="server" Enabled="True" TargetControlID="validdatefrom">
       </asp:ValidatorCalloutExtender>
       </td>
    </tr>
    <tr>
    <td class="talign1"> 
        &nbsp;&nbsp;<asp:CheckBox ID="chkenable" runat="server" Height="22px" Width="22px" 
            oncheckedchanged="chkenable_CheckedChanged" AutoPostBack="True" />
        <asp:Label ID="lbldateto" runat="server" Text="Date To" Enabled="true"></asp:Label>
    </td>
    <td class="talign2">
        &nbsp;&nbsp;<asp:TextBox ID="txtdateto" runat="server" Enabled="False" SkinID="txt1" 
            Height="21px" Width="125px" AutoPostBack="True" ></asp:TextBox>
        <asp:CalendarExtender ID="cedateto" runat="server" Enabled="True" 
        Format="dd/MM/yyyy"  TargetControlID="txtdateto" 
        TodaysDateFormat=" d  MMMM, yyyy">
    </asp:CalendarExtender>
        &nbsp;<asp:RequiredFieldValidator ID="validdateto" runat="server" Enabled="False" 
            Width="16px" ErrorMessage="Please select date" 
        ControlToValidate="txtdateto" ForeColor="red" Height="21px" 
            SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="validdateto_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="validdateto">
        </asp:ValidatorCalloutExtender>
    
       <%-- <asp:CompareValidator ID="validdateto1" runat="server" Enabled="False" 
            ErrorMessage="Please select date after date from" ControlToValidate="txtdateto" 
            ControlToCompare="txtdatefrom" Width="16px" Height="21px" 
            Operator="GreaterThan" Type="Date" ForeColor="red" SetFocusOnError="True">*</asp:CompareValidator>
        <asp:ValidatorCalloutExtender ID="validdateto1_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="validdateto1">
        </asp:ValidatorCalloutExtender>--%>
   </td>
   </tr>
   <tr>
   <td colspan="4" class="tdbtn">
        <asp:Button ID="btnsearch" runat="server" Text="Search" SkinID="btn1" 
           onclick="btnsearch_Click" />
   </td>
   </tr>
   <tr>
    <td  class="row" colspan="2">
    <asp:Panel ID="Panel1" ScrollBars="Both"  runat="server" Height="290px" Width="530px">
    
        <br />
    
        <asp:GridView ID="GridView1" runat="server" SkinId="Coffee" 
            ondatabound="GridView1_DataBound">
           
            <EmptyDataTemplate>
            <div style="border: thin solid #008000; color: #FFFFFF;">
             <b>   There is no record available for selected dates.</b>
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
        </asp:Panel>
        <br />
    </td>
   </tr>
 </table>
 </ContentTemplate>
        </asp:UpdatePanel>
        <br />
    
 <br /><br />
 </div>
</asp:Content>

