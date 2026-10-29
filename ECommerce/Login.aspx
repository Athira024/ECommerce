<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ECommerce.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style1 {
            font-family: "baskerville Old Face";
            font-size: medium;
        }
        .auto-style2 {
            width: 195px;
        }
        .auto-style3 {
            width: 195px;
            height: 32px;
        }
        .auto-style4 {
            height: 32px;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style5 {
            font-family: "baskerville Old Face";
            font-size: small;
            font-weight: bold;
        }
        .auto-style6 {
            width: 233px;
        }
        .auto-style7 {
            height: 32px;
            width: 233px;
        }
        .newStyle3 {
            font-family: "baskerville Old Face";
        }
    .auto-style8 {
        width: 233px;
        text-align: center;
    }
    .auto-style9 {
        width: 195px;
        text-align: right;
    }
    .auto-style10 {
        font-family: "baskerville Old Face";
        font-size: medium;
        text-decoration: underline;
    }
    .auto-style11 {
        width: 195px;
        height: 37px;
    }
    .auto-style12 {
        width: 233px;
        height: 37px;
    }
    .auto-style13 {
        height: 37px;
    }
        .auto-style14 {
            width: 195px;
            height: 14px;
        }
        .auto-style15 {
            width: 233px;
            height: 14px;
        }
        .auto-style16 {
            height: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9"><strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text="LOGIN"></asp:Label>
                </strong></td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"><strong>
                <asp:Label ID="Login_una_l1" runat="server" CssClass="auto-style1" Text="Username"></asp:Label>
                </strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="Login_una_tb1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4"><em>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="newStyle3" ErrorMessage="Username is required...!" ForeColor="#CC0000" ControlToValidate="Login_una_tb1"></asp:RequiredFieldValidator>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15">
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"><strong>
                <asp:Label ID="Login_pwd_l2" runat="server" CssClass="auto-style1" Text="Password"></asp:Label>
                </strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="Login_pwd_tb2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style4"><em>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="newStyle3" ErrorMessage="Password is required...!" ForeColor="#CC0000" ControlToValidate="Login_pwd_tb2"></asp:RequiredFieldValidator>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style7"></td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"><strong>
                <asp:Button ID="Login_btn" runat="server" CssClass="auto-style5" Text="LOGIN" OnClick="Login_btn_Click" />
                </strong></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style7"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Login_display_l3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
