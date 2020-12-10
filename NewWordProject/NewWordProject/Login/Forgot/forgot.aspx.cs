using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWordProject.Login.Forgot
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String TenDN = txtTenDN.Text;
                String Matkhau = txtMatkhau.Text;
                String Matkhaumoi = txtMatkhaumoi.Text;
                String StrCnn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].
               ConnectionString.ToString();
                SqlConnection cnn = new SqlConnection(StrCnn);
                String LenhSQL = "select * from Account where userName ='" + TenDN + "' and password = '" + Matkhau + "'";
                //DataTable dt = XLDL.Docbang(LenhSQL);
                //if (dt.Rows.Count == 0)
                //    lbBaoloi.Text = "Sai tên đăng nhập hoặc mật khẩu";
                //else
                //{
                //    //Thực thi lệnh dieu chinh dữ liệu
                //    string str = "UPDATE KhachHang Set password='" + Matkhaumoi + "'WHERE userName = '" + TenDN + "'";
                //    XLDL.Thuchienlenh(str);
                //    Response.Redirect("~/Dangnhap.aspx");
                //}
            }
            catch
            {
                lbBaoloi.Text = "Thao tác cập nhật dữ liệu thất bại!";
            }

        }
    }
}