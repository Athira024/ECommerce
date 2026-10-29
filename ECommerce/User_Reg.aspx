<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="User_Reg.aspx.cs" Inherits="ECommerce.User_Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 32px;
    }
    .newStyle1 {
        font-family: "baskerville Old Face";
    }
    .auto-style2 {
        height: 32px;
        width: 293px;
        text-align: right;
    }
    .auto-style3 {
        width: 293px;
    }
    .auto-style4 {
        font-family: "baskerville Old Face";
        text-decoration: underline;
        font-size: medium;
    }
    .auto-style5 {
        width: 293px;
        height: 32px;
    }
    .auto-style6 {
        font-family: "baskerville Old Face";
        font-size: medium;
    }
    .auto-style7 {
        height: 32px;
        width: 331px;
    }
    .auto-style8 {
        width: 331px;
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
            height: 14px;
        }
        .auto-style11 {
            width: 293px;
            height: 14px;
        }
        .auto-style12 {
            width: 331px;
            height: 14px;
        }
        .auto-style13 {
            height: 13px;
        }
        .auto-style14 {
            width: 293px;
            height: 13px;
        }
        .auto-style15 {
            width: 331px;
            height: 13px;
        }
        .newStyle3 {
            font-family: "baskerville Old Face";
        }
        .auto-style16 {
            font-family: "baskerville Old Face";
            color: #CC0000;
        }
        .newStyle4 {
            font-family: "baskerville Old Face";
        }
        .newStyle5 {
            font-family: "baskerville Old Face";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style2"><strong>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="USER REGISTRATION"></asp:Label>
            </strong></td>
        <td class="auto-style7"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="UserReg_namel1" runat="server" CssClass="auto-style6" Text="Name"></asp:Label>
            </strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="UserReg_nametb1" runat="server"></asp:TextBox>
        </td>
        <td><em>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserReg_nametb1" CssClass="auto-style16" ErrorMessage="Name is required...!"></asp:RequiredFieldValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11"></td>
        <td class="auto-style12"></td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="UserReg_agel2" runat="server" CssClass="auto-style6" Text="Age"></asp:Label>
            </strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="UserReg_agetb2" runat="server"></asp:TextBox>
        </td>
        <td><em>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="UserReg_agetb2" CssClass="auto-style16" ErrorMessage="Age must be between 18 and 60...!" MaximumValue="60" MinimumValue="18"></asp:RangeValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="UserReg_emaill3" runat="server" CssClass="auto-style6" Text="Email"></asp:Label>
            </strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="UserReg_emailtb3" runat="server"></asp:TextBox>
        </td>
        <td><em>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserReg_emailtb3" CssClass="auto-style16" ErrorMessage="Enter a valid mail id...!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11"></td>
        <td class="auto-style12"></td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="UserReg_addrl4" runat="server" CssClass="auto-style6" Text="Address"></asp:Label>
            </strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="UserReg_addtb4" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td><em>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserReg_addtb4" CssClass="auto-style16" ErrorMessage="Address is required...!"></asp:RequiredFieldValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="UserReg_pinl5" runat="server" CssClass="auto-style6" Text="Pincode"></asp:Label>
            </strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="UserReg_pintb5" runat="server"></asp:TextBox>
        </td>
        <td><em>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserReg_pintb5" CssClass="auto-style16" ErrorMessage="Pincode is required...!"></asp:RequiredFieldValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11"></td>
        <td class="auto-style12"></td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="UserReg_phl6" runat="server" CssClass="auto-style6" Text="Phone"></asp:Label>
            </strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="UserReg_phtb6" runat="server"></asp:TextBox>
        </td>
        <td><em>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="UserReg_phtb6" CssClass="auto-style16" ErrorMessage="Enter a valid phone number...!" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style5"><strong>
            <asp:Label ID="UserReg_unal7" runat="server" CssClass="auto-style6" Text="Username"></asp:Label>
            </strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="UserReg_unatb7" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1"><em>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="UserReg_unatb7" CssClass="auto-style16" ErrorMessage="Username is required...!"></asp:RequiredFieldValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="UserReg_pwdl8" runat="server" CssClass="auto-style6" Text="Password"></asp:Label>
            </strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="UserReg_pwdtb8" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td><em>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UserReg_pwdtb8" CssClass="auto-style16" ErrorMessage="Password is required...!"></asp:RequiredFieldValidator>
            </em></td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style5"></td>
        <td class="auto-style7"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style8"><strong>
            <asp:Button ID="UserReg_btn" runat="server" CssClass="auto-style9" Text="REGISTER" OnClick="UserReg_btn_Click" />
            </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style8">
            <asp:Label ID="UserReg_displayl9" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
