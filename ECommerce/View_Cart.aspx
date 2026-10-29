<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="View_Cart.aspx.cs" Inherits="ECommerce.View_Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         #<%= ViewCart_Grid.ClientID %> {
        border-collapse: collapse !important;
        border: 1px solid #666666 !important;
    }
    #<%= ViewCart_Grid.ClientID %> th, 
    #<%= ViewCart_Grid.ClientID %> td {
        border: 1px solid #666666 !important;
        padding: 8px !important;
    }
        .auto-style1 {
            width: 369px;
        }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style2 {
            font-family: "baskerville Old Face";
            font-weight: bold;
            font-size: medium;
        }
        .auto-style3 {
            width: 130px;
        }
        .auto-style4 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:GridView ID="ViewCart_Grid" runat="server" AutoGenerateColumns="False" CssClass="newStyle1" Width="599px" DataKeyNames="Cart_Id" OnRowCancelingEdit="ViewCart_Grid_RowCancelingEdit" OnRowDeleting="ViewCart_Grid_RowDeleting" OnRowEditing="ViewCart_Grid_RowEditing" OnRowUpdating="ViewCart_Grid_RowUpdating">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                        <asp:TemplateField HeaderText="Product Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="131px" ImageUrl='<%# Eval("Product_Image") %>' Width="110px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Cart_Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Cart_SubTotal" HeaderText="Total Amount" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1"><strong>
                <asp:Button ID="ViewCart_ConfirmBtn" runat="server" CssClass="auto-style2" Text="CONFIRM" OnClick="ViewCart_ConfirmBtn_Click" />
                </strong></td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
