<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="View_All_Products.aspx.cs" Inherits="ECommerce.View_All_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 333px;
        }
        .auto-style4 {
            height: 32px;
        }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style6 {
            font-family: "baskerville Old Face";
            font-size: large;
            color: #000000;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .newStyle3 {
            font-family: "baskerville Old Face";
        }
        .auto-style7 {
            font-family: "baskerville Old Face";
            color: #990033;
        }
        .auto-style8 {
            font-family: "baskerville Old Face";
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">
                <asp:DataList ID="All_ProdDL" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Product_Id") %>' Height="157px" ImageUrl='<%# Eval("Product_Image") %>' OnCommand="ImageButton1_Command" Width="130px" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                    </strong>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <em>
                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text='<%# Eval("Product_Description") %>'></asp:Label>
                                    </em>
                                </td>
                                <td class="auto-style4"></td>
                                <td class="auto-style4"></td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td>
                                    <em>
                                    <strong>
                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                    </strong>
                                    </em>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
