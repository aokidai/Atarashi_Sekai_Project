using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWordProject.Login.Login
{
    public partial class login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            try
            {
                string uid = txtTenDN.Text;
                string pass = txtMatkhau.Text;
                con.Open();
                string qry = "select * from Account where userName='" + uid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["userName"] = uid;
                    Response.Redirect("~/Login/Home/Home.aspx");
                }
                else
                    lbBaoloi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
                con.Close();
            }

            catch
            {
                lbBaoloi.Text = "Thất bại!";
            }
        }
    }
}