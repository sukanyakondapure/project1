<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master"
    AutoEventWireup="true" CodeFile="NewRoute.aspx.cs" Inherits="AdminPages_NewRoute" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="RouteID" DataSourceID="SqlDataSource1"
        DefaultMode="Insert">
       
        <EditItemTemplate>
            <table>
                <tr>
                    <td>
                        RouteID:
                    </td>
                    <td>
                        <asp:Label ID="RouteIDLabel1" runat="server" Text='<%# Eval("RouteID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        RouteName:
                    </td>
                    <td>
                        <asp:TextBox ID="RouteNameTextBox" runat="server" Text='<%# Bind("RouteName") %>' />
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>
                        RouteName:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RouteName") %>' />
                    </td>
                    <td style="width: 8px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Route Name Required..." ControlToValidate="TextBox1" 
                            ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        RouteID:
                    </td>
                    <td>
                        <asp:Label ID="RouteIDLabel" runat="server" Text='<%# Eval("RouteID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        RouteName:
                    </td>
                    <td>
                        <asp:Label ID="RouteNameLabel" runat="server" Text='<%# Bind("RouteName") %>' />
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMTConnectionString %>"
        DeleteCommand="DELETE FROM [AddNewRouteTable] WHERE [RouteID] = @RouteID" InsertCommand="INSERT INTO [AddNewRouteTable] ([RouteName]) VALUES (@RouteName)"
        SelectCommand="SELECT * FROM [AddNewRouteTable]" UpdateCommand="UPDATE [AddNewRouteTable] SET [RouteName] = @RouteName WHERE [RouteID] = @RouteID">
        <DeleteParameters>
            <asp:Parameter Name="RouteID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RouteName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RouteName" Type="String" />
            <asp:Parameter Name="RouteID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
