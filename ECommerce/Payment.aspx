<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="ECommerce.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style2 {
            font-family: "baskerville Old Face";
            font-size: medium;
        }
        .auto-style4 {
            text-align: center;
            width: 244px;
        }
        .auto-style6 {
            width: 144px;
            height: 32px;
        }
        .auto-style7 {
            width: 244px;
            height: 32px;
        }
        .auto-style8 {
            width: 144px;
        }
        .auto-style9 {
            width: 244px;
        }
        .auto-style10 {
            width: 305px;
        }
        .auto-style11 {
            width: 305px;
            height: 32px;
        }
        .auto-style12 {
            width: 305px;
            text-align: center;
        }
        .auto-style13 {
            font-family: "baskerville Old Face";
            font-size: large;
            text-decoration: underline;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style14 {
            font-family: "baskerville Old Face";
            font-weight: bold;
            font-size: medium;
        }
        .auto-style15 {
            font-family: "baskerville Old Face";
            font-size: large;
        }
        .auto-style16 {
            width: 262px;
        }
        .auto-style17 {
            width: 262px;
            height: 32px;
        }
    </style>
    <script type="text/javascript">
    function validateAccountDetails() {
        var accountType = document.getElementById('<%= Pay_AccTypeTB.ClientID %>');
        var accountNo = document.getElementById('<%= Pay_AccNo1TB.ClientID %>');
        var balance = document.getElementById('<%= Pay_BalTB.ClientID %>');

        // Account Type validation
        if (accountType.value.trim() === "") {
            alert("Please enter Account Type...");
            accountType.focus();
            return false;
        }
        // Only letters and spaces
        var accountTypePattern = /^[A-Za-z ]+$/;
        if (!accountTypePattern.test(accountType.value.trim())) {
            alert("Account Type should contain letters only...");
            accountType.focus();
            return false;
        }
        // Account Number validation
        if (accountNo.value.trim() === "") {
            alert("Please enter Account No...");
            accountNo.focus();
            return false;
        }
        // Only numbers
        var accountNoPattern = /^[0-9]+$/;
        if (!accountNoPattern.test(accountNo.value.trim())) {
            alert("Account No. should contain numbers only...");
            accountNo.focus();
            return false;
        }
        // Balance validation
        if (balance.value.trim() === "") {
            alert("Please enter Balance Amount...");
            balance.focus();
            return false;
        }
        // Positive number, including decimal values
        var balancePattern = /^(?:\d+|\d+\.\d{1,2})$/;
        if (!balancePattern.test(balance.value.trim())) {
            alert("Please enter a valid Balance Amount...");
            balance.focus();
            return false;
        }
        if (parseFloat(balance.value) <= 0) {
            alert("Balance Amount must be greater than 0...");
            balance.focus();
            return false;
        }
        // All validations passed
        return true;
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style12"><strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Account Details"></asp:Label>
                                </strong></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9"><strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Account Type"></asp:Label>
                                </strong></td>
                            <td class="auto-style10">
                                <asp:TextBox ID="Pay_AccTypeTB" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style7"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9"><strong>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Account No."></asp:Label>
                                </strong></td>
                            <td class="auto-style10">
                                <asp:TextBox ID="Pay_AccNo1TB" runat="server" AutoPostBack="True" OnTextChanged="Pay_AccNo1TB_TextChanged"></asp:TextBox>
                            </td>
                            <td><strong>
                                <asp:Label ID="Label7" runat="server" CssClass="auto-style2" ForeColor="#CC0000" Visible="False"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style7"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style7"><strong>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="Balance Amount"></asp:Label>
                                </strong></td>
                            <td class="auto-style11">
                                <asp:TextBox ID="Pay_BalTB" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10"><strong>
                                <asp:Button ID="Pay_InsertBtn" runat="server" CssClass="auto-style14" Text="INSERT" OnClick="Pay_InsertBtn_Click" />
                                </strong></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10"><strong>
                                <asp:Label ID="Label9" runat="server" CssClass="auto-style2" Visible="False"></asp:Label>
                                </strong></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16"><strong>
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style15" Text="Proceed to pay..."></asp:Label>
                                </strong></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17"><strong>
                                <asp:Label ID="Label6" runat="server" CssClass="auto-style2" Text="Account No."></asp:Label>
                                </strong></td>
                            <td class="auto-style1">
                                <asp:TextBox ID="Pay_AccNo2TB" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style1"></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style1"></td>
                            <td class="auto-style1"></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td><strong>
                                <asp:Button ID="Pay_Btn" runat="server" CssClass="auto-style14" Text="PAY" OnClick="Pay_Btn_Click" />
                                </strong></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td><strong>
                                <asp:Label ID="Label8" runat="server" CssClass="auto-style2" Visible="False"></asp:Label>
                                </strong></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
