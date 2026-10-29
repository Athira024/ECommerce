<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="User_Home.aspx.cs" Inherits="ECommerce.User_Home" %>
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
            font-size: large;
            color: #000000;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style3 {
            font-family: "baskerville Old Face";
            font-size: medium;
            color: #000000;
        }
        .newStyle3 {
            font-family: "baskerville Old Face";
        }
        .auto-style4 {
            font-family: "baskerville Old Face";
            font-size: xx-large;
            color: #006600;
        }
        .auto-style5 {
            font-family: "baskerville Old Face";
            font-size: x-large;
            color: #006600;
        }
        .auto-style7 {
            font-family: "baskerville Old Face";
            font-size: large;
            color: #000099;
        }
        .auto-style9 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">
                <strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Read more... Dream more..."></asp:Label>
                </strong>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <strong><em>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Books for every kind of reader"></asp:Label>
                </em></strong>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <strong>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text="Shop now...!"></asp:Label>
                </strong>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="UserHome_DL" runat="server" RepeatDirection="Horizontal" DataKeyField="Category_Id">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="157px" ImageUrl='<%# Eval("Category_Image") %>' Width="130px" CommandArgument='<%# Eval("Category_Id") %>' OnCommand="ImageButton1_Command" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text='<%# Eval("Category_Name") %>'></asp:Label>
                                    </strong>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <em>
                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("Category_Description") %>'></asp:Label>
                                    </em>
                                </td>
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
                    </ItemTemplate>
                </asp:DataList>
            </td>
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
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="88px" ImageUrl="~/Send Feedback.png" PostBackUrl="~/Send_Feedback.aspx" Width="160px" />
            </td>
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
