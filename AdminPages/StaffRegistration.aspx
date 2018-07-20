<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master"
    AutoEventWireup="true" CodeFile="StaffRegistration.aspx.cs" Inherits="AdminPages_StaffRegistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="StaffID" DataSourceID="SqlDataSource1"
        DefaultMode="Insert">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>
                        StaffID:
                    </td>
                    <td>
                        <asp:Label ID="StaffIDLabel1" runat="server" Text='<%# Eval("StaffID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact:
                    </td>
                    <td>
                        <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Address:
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Age:
                    </td>
                    <td>
                        <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Experience:
                    </td>
                    <td>
                        <asp:TextBox ID="ExperienceTextBox" runat="server" Text='<%# Bind("Experience") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        LicenceNo:
                    </td>
                    <td>
                        <asp:TextBox ID="LicenceNoTextBox" runat="server" Text='<%# Bind("LicenceNo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        WorkSpecification:
                    </td>
                    <td>
                        <asp:TextBox ID="WorkSpecificationTextBox" runat="server" Text='<%# Bind("WorkSpecification") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        OpticalVision:
                    </td>
                    <td>
                        <asp:TextBox ID="OpticalVisionTextBox" runat="server" Text='<%# Bind("OpticalVision") %>' />
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
                        Name:
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required..."
                            ControlToValidate="NameTextBox">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact:
                    </td>
                    <td>
                        <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                    </td>
                    <td style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Contact no. Required..."
                            ControlToValidate="ContactTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid Mobile number..."
                            ControlToValidate="ContactTextBox" ValidationExpression="^[789]\d{9}$">*</asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RegularExpressionValidator7">
                        </asp:ValidatorCalloutExtender>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Address:
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AddressTextBox"
                            ErrorMessage="Address Required...">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Age:
                    </td>
                    <td>
                        <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' ControlToValidate="AgeTextBox" />
                    </td>
                    <td style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Forgot to Enter Field..."
                            ControlToValidate="AgeTextBox">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be in between 18 to 60..."
                            Text="*" MaximumValue="60" MinimumValue="18" Type="Integer" ControlToValidate="AgeTextBox"
                            ForeColor="Red"></asp:RangeValidator>
                        <asp:ValidatorCalloutExtender ID="RangeValidator1_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RangeValidator1">
                        </asp:ValidatorCalloutExtender>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Experience:
                    </td>
                    <td type="Integer">
                        <asp:TextBox ID="ExperienceTextBox" runat="server" Text='<%# Bind("Experience") %>' />
                    </td>
                    <td style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Forgot to Enter Field..."
                            ControlToValidate="ExperienceTextBox">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        LicenceNo:
                    </td>
                    <td>
                        <asp:TextBox ID="LicenceNoTextBox" runat="server" Text='<%# Bind("LicenceNo") %>' />
                    </td>
                    <td style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Forgot to Enter Field..."
                            ControlToValidate="LicenceNoTextBox">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        WorkSpecification:
                    </td>
                    <td>
                        <asp:TextBox ID="WorkSpecificationTextBox" runat="server" Text='<%# Bind("WorkSpecification") %>' />
                    </td>
                    <td style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Forgot to Enter Field..."
                            ControlToValidate="WorkSpecificationTextBox">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        OpticalVision:
                    </td>
                    <td>
                        <asp:TextBox ID="OpticalVisionTextBox" runat="server" Text='<%# Bind("OpticalVision") %>' />
                    </td>
                    <td style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Forgot to Enter Field..."
                            ControlToValidate="OpticalVisionTextBox">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator8">
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
                        StaffID:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="StaffIDLabel" runat="server" Text='<%# Eval("StaffID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="ContactLabel" runat="server" Text='<%# Bind("Contact") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Address:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Age:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Experience:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="ExperienceLabel" runat="server" Text='<%# Bind("Experience") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        LicenceNo:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="LicenceNoLabel" runat="server" Text='<%# Bind("LicenceNo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        WorkSpecification:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="WorkSpecificationLabel" runat="server" Text='<%# Bind("WorkSpecification") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        OpticalVision:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="OpticalVisionLabel" runat="server" Text='<%# Bind("OpticalVision") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMTConnectionString %>"
        SelectCommand="SELECT * FROM [STAFF_registrationTable]" DeleteCommand="DELETE FROM [STAFF_registrationTable] WHERE [StaffID] = @StaffID"
        InsertCommand="INSERT INTO [STAFF_registrationTable] ( [Name], [Contact], [Address], [Age], [Experience], [LicenceNo], [WorkSpecification], [OpticalVision]) VALUES ( @Name, @Contact, @Address, @Age, @Experience, @LicenceNo, @WorkSpecification, @OpticalVision)"
        UpdateCommand="UPDATE [STAFF_registrationTable] SET [Name] = @Name, [Contact] = @Contact, [Address] = @Address, [Age] = @Age, [Experience] = @Experience, [LicenceNo] = @LicenceNo, [WorkSpecification] = @WorkSpecification, [OpticalVision] = @OpticalVision WHERE [StaffID] = @StaffID">
        <DeleteParameters>
            <asp:Parameter Name="StaffID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Experience" Type="Int32" />
            <asp:Parameter Name="LicenceNo" Type="String" />
            <asp:Parameter Name="WorkSpecification" Type="String" />
            <asp:Parameter Name="OpticalVision" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Experience" Type="Int32" />
            <asp:Parameter Name="LicenceNo" Type="String" />
            <asp:Parameter Name="WorkSpecification" Type="String" />
            <asp:Parameter Name="OpticalVision" Type="String" />
            <asp:Parameter Name="StaffID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
