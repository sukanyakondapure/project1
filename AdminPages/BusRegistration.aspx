<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.master"
    AutoEventWireup="true" CodeFile="BusRegistration.aspx.cs" Inherits="AdminPages_BusRegistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate >

    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Bus_ID" DataSourceID="SqlDataSource1"
        DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted" 
            onpageindexchanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>
                        Bus_ID:
                    </td>
                    <td>
                        <asp:Label ID="Bus_IDLabel1" runat="server" Text='<%# Eval("Bus_ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Bus_Number:
                    </td>
                    <td>
                        <asp:TextBox ID="Bus_NumberTextBox" runat="server" Text='<%# Bind("Bus_Number") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Model_Number:
                    </td>
                    <td>
                        <asp:TextBox ID="Model_NumberTextBox" runat="server" Text='<%# Bind("Model_Number") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Milage:
                    </td>
                    <td>
                        <asp:TextBox ID="MilageTextBox" runat="server" Text='<%# Bind("Milage") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Bus_Type:
                    </td>
                    <td>
                        <asp:TextBox ID="Bus_TypeTextBox" runat="server" Text='<%# Bind("Bus_Type") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Capacity:
                    </td>
                    <td>
                        <asp:TextBox ID="CapacityTextBox" runat="server" Text='<%# Bind("Capacity") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        TaxDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="TaxDateValidFromTextBox" runat="server" Text='<%# Bind("TaxDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        TaxDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="TaxDateValidToTextBox" runat="server" Text='<%# Bind("TaxDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        InsuranseDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="InsuranseDateValidFromTextBox" runat="server" Text='<%# Bind("InsuranseDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        InsuranseDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="InsuranseDateValidToTextBox" runat="server" Text='<%# Bind("InsuranseDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PermitDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="PermitDateValidFromTextBox" runat="server" Text='<%# Bind("PermitDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PermitDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="PermitDateValidToTextBox" runat="server" Text='<%# Bind("PermitDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PUCDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="PUCDateValidFromTextBox" runat="server" Text='<%# Bind("PUCDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PUCDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="PUCDateValidToTextBox" runat="server" Text='<%# Bind("PUCDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        FitnessDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="FitnessDateValidFromTextBox" runat="server" Text='<%# Bind("FitnessDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        FitnessDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="FitnessDateValidToTextBox" runat="server" Text='<%# Bind("FitnessDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Status:
                    </td>
                    <td>
                        <asp:CheckBox ID="StatusCheckBox" runat="server" Checked='<%# Bind("Status") %>' />
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
                        Bus_Number:
                    </td>
                    <td>
                        <asp:TextBox ID="TxtBusNo" runat="server" Text='<%# Bind("Bus_Number") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bus Number Required..."
                            ControlToValidate="txtBusNo" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Model_Number:
                    </td>
                    <td>
                        <asp:TextBox ID="TxtModelNo" runat="server" Text='<%# Bind("Model_Number") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Model Number Required..."
                            ForeColor="#FF3300" ControlToValidate="TxtModelNo">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Milage:
                    </td>
                    <td>
                        <asp:TextBox ID="TxtMilage" runat="server" Text='<%# Bind("Milage") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Milage..."
                            ForeColor="#FF3300" ControlToValidate="TxtMilage">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Bus_Type:
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Bus_Type") %>'>
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">2/3 Non Ac</asp:ListItem>
                            <asp:ListItem Value="2">3/3 Non Ac</asp:ListItem>
                            <asp:ListItem Value="3">2/3 Ac</asp:ListItem>
                            <asp:ListItem Value="4">3/3 Ac</asp:ListItem>
                        </asp:DropDownList>
                        <%--<asp:TextBox ID="TxtBusType" runat="server" Text='<%# Bind("Bus_Type") %>' />--%>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Bus Type..."
                            ForeColor="#FF3300" ControlToValidate="DropDownList1" InitialValue="0">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Capacity:
                    </td>
                    <td>
                        <asp:TextBox ID="TxtCapacity" runat="server" Text='<%# Bind("Capacity") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Capacity..."
                            ForeColor="#FF3300" ControlToValidate="TxtCapacity">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        TaxDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="TxtTaxDateValidFrom" runat="server" Text='<%# Bind("TaxDateValidFrom") %>'
                            AutoPostBack="True" OnTextChanged="TxtTaxDateValidFrom_TextChanged"/>
                        <asp:CalendarExtender ID="TxtTaxDateValidFrom_CalendarExtender" runat="server" Enabled="True"
                            Format="dd/MM/yyyy" TargetControlID="TxtTaxDateValidFrom">
                        </asp:CalendarExtender>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Tax Date is Required..."
                            ForeColor="#FF3300" ControlToValidate="TxtTaxDateValidFrom">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                        </asp:ValidatorCalloutExtender>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid Date.."
                            ControlToValidate="TxtTaxDateValidFrom" ValueToCompare="1/1/2000" Type="Date"
                            Operator="DataTypeCheck" ForeColor="Red">*</asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="CompareValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        TaxDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("TaxDateValidTo") %>' ReadOnly="True" />
                    </td>
                </tr>
                <tr>
                    <td>
                        InsuranseDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("InsuranseDateValidFrom") %>'
                            AutoPostBack="True" OnTextChanged="TextBox8_TextChanged" />
                        <asp:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" Enabled="True"
                            Format="dd/MM/yyyy" TargetControlID="TextBox8">
                        </asp:CalendarExtender>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Insurance Date is Require..."
                            ForeColor="#FF3300" ControlToValidate="TextBox8">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                        </asp:ValidatorCalloutExtender>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Invalid Insurance Date..."
                            ControlToValidate="TextBox8" ValueToCompare="1/1/2000" Type="Date" 
                            Operator="DataTypeCheck" ForeColor="Red">*</asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="CompareValidator2_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="CompareValidator2">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        InsuranseDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("InsuranseDateValidTo") %>'
                            ReadOnly="True" />
                    </td>
                </tr>
                <tr>
                    <td>
                        PermitDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("PermitDateValidFrom") %>'
                            AutoPostBack="True" OnTextChanged="TextBox10_TextChanged" />
                        <asp:CalendarExtender ID="TextBox10_CalendarExtender" runat="server" Enabled="True"
                            Format="dd/MM/yyyy" TargetControlID="TextBox10">
                        </asp:CalendarExtender>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Permit Date is Required..."
                            ForeColor="#FF3300" ControlToValidate="TextBox10">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator8">
                        </asp:ValidatorCalloutExtender>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Invalid Permit Date..."
                            ControlToValidate="TextBox10" ValueToCompare="1/1/2000" Type="Date" 
                            Operator="DataTypeCheck" ForeColor="Red">*</asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="CompareValidator3_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="CompareValidator3">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        PermitDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("PermitDateValidTo") %>'
                            ReadOnly="True" />
                    </td>
                </tr>
                <tr>
                    <td>
                        PUCDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("PUCDateValidFrom") %>'
                            AutoPostBack="True" OnTextChanged="TextBox12_TextChanged" />
                        <asp:CalendarExtender ID="TextBox12_CalendarExtender" runat="server" Enabled="True"
                            Format="dd/MM/yyyy" TargetControlID="TextBox12">
                        </asp:CalendarExtender>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="PUC Date is Required..."
                            ForeColor="#FF3300" ControlToValidate="TextBox12">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator10_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator10">
                        </asp:ValidatorCalloutExtender>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid PUC Date..."
                            ControlToValidate="TextBox12" ValueToCompare="1/1/2000" Type="Date" 
                            Operator="DataTypeCheck" ForeColor="Red">*</asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="CompareValidator5_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="CompareValidator5">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        PUCDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("PUCDateValidTo") %>' ReadOnly="True" />
                    </td>
                </tr>
                <tr>
                    <td>
                        FitnessDateValidFrom:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("FitnessDateValidFrom") %>'
                            AutoPostBack="True" OnTextChanged="TextBox14_TextChanged" />
                        <asp:CalendarExtender ID="TextBox14_CalendarExtender" runat="server" Enabled="True"
                            Format="dd/MM/yyyy" TargetControlID="TextBox14">
                        </asp:CalendarExtender>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Fitness Date is Required..."
                            ForeColor="#FF3300" ControlToValidate="TextBox14">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator9_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator9">
                        </asp:ValidatorCalloutExtender>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid Fitness Date..."
                            ValueToCompare="1/1/2000" Type="Date" Operator="DataTypeCheck" 
                            ControlToValidate="TextBox14" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        FitnessDateValidTo:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("FitnessDateValidTo") %>'
                            ReadOnly="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Status:
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Status") %>' />
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insert" onclick="InsertButton_Click" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        Bus_ID:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Bus_ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Bus_Number:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Bus_Number") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Model_Number:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Model_Number") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Milage:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Milage") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Bus_Type:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="Bus_TypeLabel" runat="server" Text='<%# Bind("Bus_Type") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Capacity:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="CapacityLabel" runat="server" Text='<%# Bind("Capacity") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        TaxDateValidFrom:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="TaxDateValidFromLabel" runat="server" Text='<%# Bind("TaxDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        TaxDateValidTo:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="TaxDateValidToLabel" runat="server" Text='<%# Bind("TaxDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        InsuranseDateValidFrom:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="InsuranseDateValidFromLabel" runat="server" Text='<%# Bind("InsuranseDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        InsuranseDateValidTo:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="InsuranseDateValidToLabel" runat="server" Text='<%# Bind("InsuranseDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PermitDateValidFrom:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="PermitDateValidFromLabel" runat="server" Text='<%# Bind("PermitDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PermitDateValidTo:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="PermitDateValidToLabel" runat="server" Text='<%# Bind("PermitDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PUCDateValidFrom:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="PUCDateValidFromLabel" runat="server" Text='<%# Bind("PUCDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        PUCDateValidTo:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="PUCDateValidToLabel" runat="server" Text='<%# Bind("PUCDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        FitnessDateValidFrom:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="FitnessDateValidFromLabel" runat="server" Text='<%# Bind("FitnessDateValidFrom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        FitnessDateValidTo:
                    </td>
                    <td class="talign2">
                        <asp:Label ID="FitnessDateValidToLabel" runat="server" Text='<%# Bind("FitnessDateValidTo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Status:
                    </td>
                    <td>
                        <asp:CheckBox ID="StatusCheckBox" runat="server" Checked='<%# Bind("Status") %>'
                            Enabled="false" />
                    </td>
                </tr>
            </table>
            <caption>
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New" />
            </caption>
        </ItemTemplate>
        <RowStyle />
    </asp:FormView>

    </ContentTemplate>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMTConnectionString %>"
        DeleteCommand="DELETE FROM [BUS_registerationTable] WHERE [Bus_ID] = @Bus_ID"
        InsertCommand="INSERT INTO [BUS_registerationTable] ([Bus_Number], [Model_Number], [Milage], [Bus_Type], [Capacity], [TaxDateValidFrom], [TaxDateValidTo], [InsuranseDateValidFrom], [InsuranseDateValidTo], [PermitDateValidFrom], [PermitDateValidTo], [PUCDateValidFrom], [PUCDateValidTo], [FitnessDateValidFrom], [FitnessDateValidTo], [Status]) VALUES (@Bus_Number, @Model_Number, @Milage, @Bus_Type, @Capacity, @TaxDateValidFrom, @TaxDateValidTo, @InsuranseDateValidFrom, @InsuranseDateValidTo, @PermitDateValidFrom, @PermitDateValidTo, @PUCDateValidFrom, @PUCDateValidTo, @FitnessDateValidFrom, @FitnessDateValidTo, @Status)"
        SelectCommand="SELECT * FROM [BUS_registerationTable] ORDER BY [Bus_ID] DESC"
        UpdateCommand="UPDATE [BUS_registerationTable] SET [Bus_Number] = @Bus_Number, [Model_Number] = @Model_Number, [Milage] = @Milage, [Bus_Type] = @Bus_Type, [Capacity] = @Capacity, [TaxDateValidFrom] = @TaxDateValidFrom, [TaxDateValidTo] = @TaxDateValidTo, [InsuranseDateValidFrom] = @InsuranseDateValidFrom, [InsuranseDateValidTo] = @InsuranseDateValidTo, [PermitDateValidFrom] = @PermitDateValidFrom, [PermitDateValidTo] = @PermitDateValidTo, [PUCDateValidFrom] = @PUCDateValidFrom, [PUCDateValidTo] = @PUCDateValidTo, [FitnessDateValidFrom] = @FitnessDateValidFrom, [FitnessDateValidTo] = @FitnessDateValidTo, [Status] = @Status WHERE [Bus_ID] = @Bus_ID">
        <DeleteParameters>
            <asp:Parameter Name="Bus_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Bus_Number" Type="String" />
            <asp:Parameter Name="Model_Number" Type="String" />
            <asp:Parameter Name="Milage" Type="String" />
            <asp:Parameter Name="Bus_Type" Type="String" />
            <asp:Parameter Name="Capacity" Type="Int32" />
            <asp:Parameter DbType="Date" Name="TaxDateValidFrom" />
            <asp:Parameter DbType="Date" Name="TaxDateValidTo" />
            <asp:Parameter DbType="Date" Name="InsuranseDateValidFrom" />
            <asp:Parameter DbType="Date" Name="InsuranseDateValidTo" />
            <asp:Parameter DbType="Date" Name="PermitDateValidFrom" />
            <asp:Parameter DbType="Date" Name="PermitDateValidTo" />
            <asp:Parameter DbType="Date" Name="PUCDateValidFrom" />
            <asp:Parameter DbType="Date" Name="PUCDateValidTo" />
            <asp:Parameter DbType="Date" Name="FitnessDateValidFrom" />
            <asp:Parameter DbType="Date" Name="FitnessDateValidTo" />
            <asp:Parameter Name="Status" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Bus_Number" Type="String" />
            <asp:Parameter Name="Model_Number" Type="String" />
            <asp:Parameter Name="Milage" Type="String" />
            <asp:Parameter Name="Bus_Type" Type="String" />
            <asp:Parameter Name="Capacity" Type="Int32" />
            <asp:Parameter DbType="Date" Name="TaxDateValidFrom" />
            <asp:Parameter DbType="Date" Name="TaxDateValidTo" />
            <asp:Parameter DbType="Date" Name="InsuranseDateValidFrom" />
            <asp:Parameter DbType="Date" Name="InsuranseDateValidTo" />
            <asp:Parameter DbType="Date" Name="PermitDateValidFrom" />
            <asp:Parameter DbType="Date" Name="PermitDateValidTo" />
            <asp:Parameter DbType="Date" Name="PUCDateValidFrom" />
            <asp:Parameter DbType="Date" Name="PUCDateValidTo" />
            <asp:Parameter DbType="Date" Name="FitnessDateValidFrom" />
            <asp:Parameter DbType="Date" Name="FitnessDateValidTo" />
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter Name="Bus_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
