using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWordProject.Login.Create
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtdk_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connn"].ToString());

            try
            {
                conn.Open();
                String TenDN = txtTenDN.Text;
                String Matkhau = txtMatkhau.Text;
                String Hoten = txtHovaten.Text;
                String Diachi = txtDiachi.Text;
                String Dienthoai = txtDienthoai.Text;
                String Ngaysinh = ddlThangsinh.Text + "/" + ddlNgaysinh.Text + "/" + txtNamsinh.Text;
                String Email = txtEmail.Text;




                string str = "INSERT INTO KHACHHANG(HotenKH,DiachiKH,DienthoaiKH,Email,TenDN,Matkhau,Ngaysinh) VALUES(N'" + Hoten + "', N'" + Diachi + "', '" + Dienthoai + "','" + Email + "','" + TenDN + "','" + Matkhau + "','" + Ngaysinh + "')";
                SqlCommand cmd = new SqlCommand(str, conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                Response.Redirect("~/Dangnhap.aspx");
            }
            catch
            {
                lbBaoloi.Text = "Thất bại!";
            }
        }
    }
}