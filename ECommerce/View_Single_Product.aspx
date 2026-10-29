<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="View_Single_Product.aspx.cs" Inherits="ECommerce.View_Single_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 270px;
        }
        .auto-style2 {
            width: 270px;
            height: 32px;
        }
        .auto-style3 {
            height: 32px;
        }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style4 {
            font-family: "baskerville Old Face";
            font-weight: bold;
        }
        .auto-style5 {
            width: 270px;
            height: 19px;
        }
        .auto-style7 {
            height: 19px;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style16 {
            font-family: "baskerville Old Face";
            font-size: large;
            color: #000000;
        }
        .newStyle3 {
            font-family: "baskerville Old Face";
        }
        .auto-style17 {
            font-family: "baskerville Old Face";
            color: #000000;
        }
        .newStyle4 {
            font-family: "baskerville Old Face";
        }
        .auto-style18 {
            font-family: "baskerville Old Face";
            color: #990033;
        }
        .newStyle5 {
            font-family: "baskerville Old Face";
        }
        .newStyle6 {
            font-family: "baskerville Old Face";
        }
        .newStyle7 {
            font-family: "baskerville Old Face";
        }
        .auto-style19 {
            width: 732px;
        }
        .auto-style20 {
            width: 732px;
            height: 32px;
        }
        .newStyle8 {
            font-family: "baskerville Old Face";
        }
        .newStyle9 {
            font-family: "baskerville Old Face";
        }
    </style>
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
            <td>&nbsp;</td>
            <td>
                <asp:Panel ID="View_OneProdPanel" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style5">
                                <asp:Image ID="View1Prod_Img" runat="server" Height="250px" Width="200px" />
                            </td>
                            <td class="auto-style7">
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style19"><strong>
                                            <asp:Label ID="View1Prod_NameL" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
                                            </strong></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20"><em>
                                            <asp:Label ID="View1Prod_DescL" runat="server" CssClass="auto-style17" Text="Label"></asp:Label>
                                            </em></td>
                                        <td class="auto-style3"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19"><strong>
                                            <asp:Label ID="View1Prod_PriceL" runat="server" CssClass="auto-style18" Text="Label"></asp:Label>
                                            </strong></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">
                                            <asp:Label ID="View1Prod_QtyL" runat="server" CssClass="auto-style17" Text="Select Quantity :       "></asp:Label>
                                            <asp:DropDownList ID="View1Prod_QtyDDL" runat="server" CssClass="newStyle6">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style3"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19"><strong>
                                            <asp:Button ID="View1Prod_CartBtn" runat="server" CssClass="auto-style4" OnClick="View1Prod_CartBtn_Click" Text="Add to cart" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="View1Prod_ContinueBtn" runat="server" CssClass="auto-style4" OnClick="View1Prod_ContinueBtn_Click" Text="Continue" />
                                            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                                            <asp:Button ID="View1Prod_ViewcartBtn" runat="server" CssClass="auto-style4" Text="View cart" OnClick="View1Prod_ViewcartBtn_Click" />
                                            </strong></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:Label ID="View1Prod_DispL" runat="server" CssClass="auto-style17" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
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
