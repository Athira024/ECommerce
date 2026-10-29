<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="ViewBill.aspx.cs" Inherits="ECommerce.ViewBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         #<%= Bill_Grid.ClientID %> {
        border-collapse: collapse !important;
        border: 1px solid #666666 !important;
    }
    #<%= Bill_Grid.ClientID %> th, 
    #<%= Bill_Grid.ClientID %> td {
        border: 1px solid #666666 !important;
        padding: 8px !important;
    }
        .auto-style1 {
            width: 278px;
        }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style2 {
            font-family: "baskerville Old Face";
            text-decoration: underline;
            font-size: large;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            width: 278px;
            height: 32px;
        }
        .auto-style5 {
            width: 241px;
        }
        .auto-style6 {
            height: 32px;
            width: 241px;
        }
        .auto-style7 {
            width: 383px;
        }
        .auto-style8 {
            height: 32px;
            width: 383px;
        }
        .auto-style9 {
            font-family: "baskerville Old Face";
            font-size: medium;
        }
        .auto-style10 {
            height: 13px;
            width: 383px;
        }
        .auto-style11 {
            height: 13px;
            width: 241px;
        }
        .auto-style12 {
            width: 278px;
            height: 13px;
        }
        .auto-style13 {
            height: 13px;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style14 {
            font-family: "baskerville Old Face";
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="ORDER RECEIPT"></asp:Label>
                </strong></td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Customer :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Bill_UnameLbl" runat="server" CssClass="auto-style9"></asp:Label>
                </strong></td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Phone :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Bill_UserPhLbl" runat="server" CssClass="auto-style9"></asp:Label>
                </strong></td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Order Date :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Bill_OrdDateLbl" runat="server" CssClass="auto-style9"></asp:Label>
                </strong></td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:GridView ID="Bill_Grid" runat="server" AutoGenerateColumns="False" Width="798px">
                    <Columns>
                        <asp:BoundField DataField="Product_Name" HeaderText="Product" />
                        <asp:BoundField DataField="Order_Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Order_SubTotal" HeaderText="Sub Total" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Grand Total :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Bill_GTotLbl" runat="server" CssClass="auto-style9"></asp:Label>
                </strong></td>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Text="PAYMENT" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
