<%@ Page Title="" Language="C#" MasterPageFile="~/Login/master.Master" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="NewWordProject.Login.Forgot.forgot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width:100%; text-align:center" align="center">
        <tr>
            
            <td colspan="2" class="auto-style3">Đăng nhập </td>
        </tr>
        <tr>
            <td class="auto-style2">Tên đăng nhập</td>
            <td>
                <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Mật khẩu</td>
            <td>
                <asp:TextBox ID="txtMatkhau" runat="server" Width="157px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style2">Mật khẩu mới</td>
            <td>
                <asp:TextBox ID="txtMatkhaumoi" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style2">Nhập lại mật khẩu</td>
            <td>
                <asp:TextBox ID="txtnhaplai" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            
            <td colspan="2" class="auto-style3">
                <asp:Button ID="btDongy" runat="server" Text="đồng ý" OnClick="Button1_Click" />
            </td>
            
        </tr>
        <tr>
            
            <td colspan="2" class="auto-style2">
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
            </td>
            
        </tr>
        <tr>
            
            <td colspan="2" class="auto-style2">
                <asp:Label ID="lbBaoloi" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
    </table>
</asp:Content>

