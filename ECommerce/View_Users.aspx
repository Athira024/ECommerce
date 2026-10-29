<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="View_Users.aspx.cs" Inherits="ECommerce.View_Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
          #<%= View_UserGrid.ClientID %> {
        border-collapse: collapse !important;
        border: 1px solid #666666 !important;
    }
    #<%= View_UserGrid.ClientID %> th, 
    #<%= View_UserGrid.ClientID %> td {
        border: 1px solid #666666 !important;
        padding: 8px !important;
    }
        .auto-style1 {
            height: 32px;
        }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style2 {
            height: 32px;
            text-align: center;
        }
        .auto-style3 {
            font-family: "baskerville Old Face";
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="REGISTERED USERS"></asp:Label>
                </strong></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="View_UserGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="User_Id" OnRowCancelingEdit="View_UserGrid_RowCancelingEdit" OnRowEditing="View_UserGrid_RowEditing" OnRowUpdating="View_UserGrid_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="User_Name" HeaderText="Name" />
                        <asp:BoundField DataField="User_Age" HeaderText="Age" />
                        <asp:BoundField DataField="User_Email" HeaderText="Email Id" />
                        <asp:BoundField DataField="User_Address" HeaderText="Address" />
                        <asp:BoundField DataField="User_Pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="User_Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="User_Status" HeaderText="Status" />
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
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
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
