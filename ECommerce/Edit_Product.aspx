<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="ECommerce.Edit_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    #<%= Edit_ProGrid.ClientID %> {
        border-collapse: collapse !important;
        border: 1px solid #666666 !important;
    }
    #<%= Edit_ProGrid.ClientID %> th, 
    #<%= Edit_ProGrid.ClientID %> td {
        border: 1px solid #666666 !important;
        padding: 8px !important;
    }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style1 {
            width: 972px;
        }
        .newStyle2 {
            font-family: "BASkerville Old Face";
        }
        .auto-style2 {
            font-family: "BASkerville Old Face";
            font-size: large;
        }
        .auto-style3 {
            width: 972px;
            text-align: center;
        }
    </style>
    <table class="w-100">
        <tr>
            <td class="auto-style3">
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="PRODUCTS"></asp:Label>
                </strong>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="Edit_ProGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_Id" OnRowCancelingEdit="Edit_ProGrid_RowCancelingEdit" OnRowEditing="Edit_ProGrid_RowEditing" OnRowUpdating="Edit_ProGrid_RowUpdating" AllowPaging="True" PageSize="4" OnPageIndexChanging="Edit_ProGrid_PageIndexChanging" CssClass="newStyle1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Product_Name" HeaderText="Name" />
                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="86px" ImageUrl='<%# Eval("Product_Image") %>' Width="71px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Product_Price" HeaderText="Price" />
                        <asp:BoundField DataField="Product_Description" HeaderText="Author" />
                        <asp:BoundField DataField="Product_Stock" HeaderText="Stock" />
                        <asp:BoundField DataField="Product_Status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
