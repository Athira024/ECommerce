<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Admin_Reg.aspx.cs" Inherits="ECommerce.Admin_Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 270px;
    }
    .newStyle1 {
        font-family: "baskerville Old Face";
    }
    .auto-style3 {
        width: 270px;
        text-align: right;
    }
    .auto-style4 {
        font-family: "baskerville Old Face";
        text-decoration: underline;
    }
    .auto-style5 {
        height: 32px;
    }
    .auto-style6 {
        width: 270px;
        height: 32px;
    }
    .auto-style7 {
        height: 13px;
    }
    .auto-style8 {
        width: 270px;
        height: 13px;
    }
    .newStyle2 {
        font-family: "baskerville Old Face";
    }
    .auto-style9 {
        font-family: "baskerville Old Face";
        font-weight: bold;
        font-size: small;
    }
        .auto-style10 {
            width: 343px;
        }
        .auto-style11 {
            height: 13px;
            width: 343px;
        }
        .auto-style12 {
            height: 32px;
            width: 343px;
        }
        .newStyle3 {
            font-family: "baskerville Old Face";
        }
        .auto-style13 {
            font-family: "baskerville Old Face";
            color: #CC0000;
        }
        .newStyle4 {
            font-family: "baskerville Old Face";
        }
        .auto-style14 {
            height: 14px;
        }
        .auto-style15 {
            width: 270px;
            height: 14px;
        }
        .auto-style16 {
            height: 14px;
            width: 343px;
        }
        .auto-style17 {
            height: 15px;
        }
        .auto-style18 {
            width: 270px;
            height: 15px;
        }
        .auto-style19 {
            height: 15px;
            width: 343px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="ADMIN REGISTRATION"></asp:Label>
                </strong></td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2"><strong>
                <asp:Label ID="AdminReg_namel1" runat="server" CssClass="newStyle1" Text="Name"></asp:Label>
                </strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="AdminReg_nametb1" runat="server"></asp:TextBox>
        </td>
        <td><em>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AdminReg_nametb1" CssClass="auto-style13" ErrorMessage="Name is required...!"></asp:RequiredFieldValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style8"></td>
        <td class="auto-style11"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2"><strong>
                <asp:Label ID="AdminReg_emaill2" runat="server" CssClass="newStyle1" Text="Email"></asp:Label>
                </strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="AdminReg_emailtb2" runat="server"></asp:TextBox>
        </td>
        <td><em>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="AdminReg_emailtb2" CssClass="auto-style13" ErrorMessage="Enter a valid mail id...!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
        <td class="auto-style16"></td>
        <td class="auto-style14"></td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style6"><strong>
                <asp:Label ID="AdminReg_unal3" runat="server" CssClass="newStyle1" Text="Username"></asp:Label>
                </strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="AdminReg_unatb3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style5"><em>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AdminReg_unatb3" CssClass="auto-style13" ErrorMessage="Username is required...!"></asp:RequiredFieldValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style18"></td>
        <td class="auto-style19"></td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2"><strong>
                <asp:Label ID="AdminReg_pwdl4" runat="server" CssClass="newStyle1" Text="Password"></asp:Label>
                </strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="AdminReg_pwdtb4" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td><em>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AdminReg_pwdtb4" CssClass="auto-style13" ErrorMessage="Password is required...!"></asp:RequiredFieldValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
        <td class="auto-style16"></td>
        <td class="auto-style14"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style10"><strong>
            <asp:Button ID="AdminReg_btn" runat="server" CssClass="auto-style9" Text="REGISTER" OnClick="AdminReg_btn_Click" />
            </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style6"></td>
        <td class="auto-style12"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style10">
            <asp:Label ID="AdminReg_displayl5" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
