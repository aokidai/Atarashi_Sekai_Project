<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="NewWordProject.Login.Login.login" %>
<table style="width:28%;" align="center">
        <tr>
            
            <td colspan="2" class="auto-style2" style="text-align:center">Đăng nhập </td>
        </tr>
        <tr>
            <td class="auto-style3">Tên đăng nhập</td>
            <td>
                <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style3">Mật khẩu</td>
            <td>
                <asp:TextBox ID="txtMatkhau" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            
            <td colspan="2" class="auto-style2" style="text-align:center">
                <asp:Button ID="btDangnhap" runat="server" Text="đăng nhập" OnClick="Button1_Click" />
            </td>
            
        </tr>
        <tr>
            
            <td colspan="2" class="auto-style4" style="text-align:center">
                <asp:Label ID="lbBaoloi" runat="server"></asp:Label>
            </td>
            
        </tr>
        <tr>
            
            <td colspan="2" class="auto-style4" style="text-align:center">
                <asp:Label ID="Label1" runat="server"><span style="float:right; color:red">(?) Quên Mật Khẩu? Hãy liên lạc với Admin của bạn</span></asp:Label>
            </td>
            
        </tr>
    </table>
