
<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Edit_Category.aspx.cs" Inherits="ECommerce.Edit_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    #<%= Edit_CatGrid.ClientID %> {
        border-collapse: collapse !important;
        border: 1px solid #666666 !important;
    }
    #<%= Edit_CatGrid.ClientID %> th, 
    #<%= Edit_CatGrid.ClientID %> td {
        border: 1px solid #666666 !important;
        padding: 8px !important;
    }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style1 {
            font-family: "baskerville Old Face";
            font-size: large;
        }
    </style>
    <table class="w-100">
        <tr>
            <td class="text-center">
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="CATEGORIES"></asp:Label>
                </strong>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="Edit_CatGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Category_Id" OnRowCancelingEdit="Edit_CatGrid_RowCancelingEdit" OnRowEditing="Edit_CatGrid_RowEditing" OnRowUpdating="Edit_CatGrid_RowUpdating" CssClass="newStyle1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Category_Name" HeaderText="Name" />
                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="86px" ImageUrl='<%# Eval("Category_Image") %>' Width="71px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Category_Description" HeaderText="Description" />
                        <asp:BoundField DataField="Category_Status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
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
