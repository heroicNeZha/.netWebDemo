using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMIS.Manager
{
    public partial class flightInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Write("<script>alert('请先登录!');</script>");
                Response.Redirect("~/", false);
            }
        }
    }
}