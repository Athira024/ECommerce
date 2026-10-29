<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="ECommerce.Admin_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style4 {
            width: 117px;
        }
        .auto-style5 {
            height: 32px;
            width: 117px;
        }
        .auto-style8 {
            width: 300px;
        }
        .auto-style9 {
            height: 32px;
            width: 300px;
        }
        .auto-style10 {
            height: 192px;
        }
        .auto-style11 {
            width: 300px;
            height: 192px;
        }
        .auto-style12 {
            width: 117px;
            height: 192px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="190px" ImageUrl="~/img/Add_Category.png" Width="229px" PostBackUrl="~/Add_Category.aspx" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="190px" ImageUrl="~/img/Add_Product.png" PostBackUrl="~/Add_Product.aspx" Width="229px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="190px" ImageUrl="~/img/Edit_Category.png" PostBackUrl="~/Edit_Category.aspx" Width="229px" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="190px" ImageUrl="~/img/Edit_Product.png" PostBackUrl="~/Edit_Product.aspx" Width="229px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="190px" ImageUrl="~/View FeedBack.png" PostBackUrl="~/View_Feedback.aspx" Width="229px" />
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style11">
                <asp:ImageButton ID="ImageButton6" runat="server" Height="190px" ImageUrl="~/Reg Users.png" PostBackUrl="~/View_Users.aspx" Width="229px" />
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style5"></td>
            <td class="auto-style9"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
