<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="View_Feedback.aspx.cs" Inherits="ECommerce.View_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         #<%= ViewFeedback_Grid.ClientID %> {
        border-collapse: collapse !important;
        border: 1px solid #666666 !important;
    }
    #<%= ViewFeedback_Grid.ClientID %> th, 
    #<%= ViewFeedback_Grid.ClientID %> td {
        border: 1px solid #666666 !important;
        padding: 8px !important;
    }
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style1 {
            font-family: "baskerville Old Face";
            font-size: large;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style2 {
            font-family: "baskerville Old Face";
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="text-center"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="USER FEEDBACK"></asp:Label>
                </strong></td>
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
            <td>
                <asp:GridView ID="ViewFeedback_Grid" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="User_Name" HeaderText="User Name" />
                        <asp:BoundField DataField="User_Email" HeaderText="User Email" />
                        <asp:BoundField DataField="Product_Id" HeaderText="Product Id" />
                        <asp:BoundField DataField="Feedback_Msg" HeaderText="Feedback" />
                        <asp:BoundField DataField="Feedback_Date" HeaderText="Feedback Date" DataFormatString="{0:dd/MM/yyyy}"/>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <strong>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("User_Id") %>' CssClass="auto-style2" OnCommand="Button1_Command" Text="Reply" />
                                </strong>
                            </ItemTemplate>
                        </asp:TemplateField>
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
