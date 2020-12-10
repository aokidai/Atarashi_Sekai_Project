using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWordProject.Login.UC
{
    public partial class na : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                lbTC.Visible = false;
                lkDN.Visible = true;
                lkDX.Visible = false;
            }
            else
            {
                lbTC.Visible = true;
                lkDN.Visible = false;
                lkDX.Visible = true;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["userName"] = null;
        }
    }
}