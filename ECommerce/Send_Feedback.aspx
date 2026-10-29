<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page1.Master" AutoEventWireup="true" CodeBehind="Send_Feedback.aspx.cs" Inherits="ECommerce.Send_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "baskerville Old Face";
        }
        .auto-style1 {
            font-family: "baskerville Old Face";
            font-size: x-large;
        }
        .auto-style2 {
            height: 32px;
        }
        .newStyle2 {
            font-family: "baskerville Old Face";
        }
        .auto-style3 {
            font-family: "baskerville Old Face";
            font-weight: bold;
        }
        .auto-style4 {
            width: 168px;
        }
        .auto-style5 {
            height: 32px;
            width: 168px;
        }
        .auto-style6 {
            width: 168px;
            height: 52px;
        }
        .auto-style7 {
            height: 52px;
        }
        .auto-style8 {
            font-family: "baskerville Old Face";
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/feedback (1).png" Width="75px" />
&nbsp; &nbsp;<strong><asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Share your shopping experience..."></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2"><strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Product Id: "></asp:Label>
&nbsp;&nbsp; </strong>
                <asp:TextBox ID="SendFeedback_ProdIdTB" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <asp:TextBox ID="SendFeedback_TB" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td><strong>
                <asp:Button ID="SendFeedback_Btn" runat="server" CssClass="auto-style3" OnClick="SendFeedback_Btn_Click" Text="SEND" />
                </strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td><strong>
                <asp:Label ID="SendFeedback_Lbl" runat="server" CssClass="auto-style8" Visible="False"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
