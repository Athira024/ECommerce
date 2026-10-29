<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Add_Category.aspx.cs" Inherits="ECommerce.Add_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "BASkerville Old Face";
        }
        .auto-style1 {
            font-family: "BASkerville Old Face";
            text-decoration: underline;
            font-size: medium;
        }
        .auto-style2 {
            text-align: right;
            width: 261px;
        }
        .auto-style3 {
            width: 261px;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style4 {
            height: 13px;
        }
        .auto-style5 {
            width: 261px;
            height: 13px;
        }
        .auto-style6 {
            width: 363px;
        }
        .auto-style7 {
            height: 13px;
            width: 363px;
        }
        .newStyle3 {
            font-family: "BASkerville Old Face";
        }
        .auto-style8 {
            font-family: "BASkerville Old Face";
            font-size: small;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="ADD CATEGORY"></asp:Label>
                </strong></td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Label ID="AddCat_NameL" runat="server" CssClass="newStyle2" Text="Name"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="AddCat_NameTb" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style7"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Label ID="AddCat_ImgL" runat="server" CssClass="newStyle2" Text="Image"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="AddCat_ImgFu" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style7"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Label ID="AddCat_DescL" runat="server" CssClass="newStyle2" Text="Description"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="AddCat_DescTb" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="AddCat_Btn" runat="server" CssClass="auto-style8" Text="ADD CATEGORY" OnClick="AddCat_Btn_Click" />
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="AddCat_DispL" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
