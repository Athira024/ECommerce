<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="ECommerce.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .newStyle1 {
            font-family: "BASkerville Old Face";
        }
        .auto-style2 {
            font-family: "BASkerville Old Face";
            text-decoration: underline;
        }
        .auto-style3 {
            text-align: right;
            width: 285px;
        }
        .auto-style4 {
            width: 285px;
        }
        .auto-style5 {
            height: 32px;
            width: 285px;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style6 {
            width: 386px;
        }
        .auto-style7 {
            height: 32px;
            width: 386px;
        }
        .newStyle3 {
            font-family: "BASkerville Old Face";
        }
        .auto-style8 {
            font-family: "BASkerville Old Face";
            font-weight: bold;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="ADD PRODUCT"></asp:Label>
                </strong></td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Label ID="AddProd_CatnaL" runat="server" CssClass="newStyle2" Text="Category Name"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="AddProd_CatDL" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Label ID="AddProd_NameL" runat="server" CssClass="newStyle2" Text="Product Name"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="AddProd_NameTb" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style5"></td>
            <td class="auto-style7"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Label ID="AddProd_ImgL" runat="server" CssClass="newStyle2" Text="Image"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="AddProd_ImgFu" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Label ID="AddProd_PriceL" runat="server" CssClass="newStyle2" Text="Price"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="AddProd_PriceTb" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style5"></td>
            <td class="auto-style7"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Label ID="AddProd_DescL" runat="server" CssClass="newStyle2" Text="Description"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="AddProd_DescTb" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Label ID="AddProd_StockL" runat="server" CssClass="newStyle2" Text="Stock"></asp:Label>
                </strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="AddProd_StockTb" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style5"></td>
            <td class="auto-style7"><strong>
                <asp:Button ID="AddProd_Btn" runat="server" CssClass="auto-style8" OnClick="AddProd_Btn_Click" Text="ADD PRODUCT" />
                </strong></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="AddProd_DispL" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
