<%@ Page Title="" Language="C#" MasterPageFile="~/Login/master.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="NewWordProject.Login.Create.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            height: 21px;
            text-align: right;
        }
         .auto-style6 {
             height: 21px;
             width: 733px;
         }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table class="auto-style2" align="center">
        <tr>
            <td class="auto-style4" colspan="2" style="text-align:center">Đăng ký thành viên&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">Thông tin đăng nhập</td>
        </tr>
        <tr>
            <td class="auto-style5">Tên đăng nhập</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không được rỗng"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Mật khẩu</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtMatkhau" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatkhau" ErrorMessage="Mật khẫu không được rỗng"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Nhập lại mật khẩu</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtnhaplai" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtMatkhau" ControlToValidate="txtnhaplai" ErrorMessage="Nhập lại không đúng"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2" style="text-align:center">Thông tin cá nhân</td>
        </tr>
        <tr>
            <td class="auto-style5">Họ và tên</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtHovaten" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtHovaten" ErrorMessage="Họ tên không được rỗng"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Địa chỉ</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDiachi" ErrorMessage="Địa chỉ không được rỗng"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Số điện thoại</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtDienthoai" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDienthoai" ErrorMessage="Số điện thoại không được rỗng"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Ngày sinh</td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlNgaysinh" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                Tháng<asp:DropDownList ID="ddlThangsinh" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                Năm<asp:TextBox ID="txtNamsinh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Email</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không được rỗng"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2" style="text-align:center">
                <asp:Button ID="txtdk" runat="server" Text="Đăng ký" OnClick="txtdk_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2" style="text-align:center">
                <asp:Label ID="lbBaoloi" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


