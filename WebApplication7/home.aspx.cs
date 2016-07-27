using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            if (ViewState["imageDisploy"] == null)
            {
                Image1.ImageUrl = "1.jpg";
                ViewState["imageDisploy"] = 1;
            }
            else
            {
                int i = (int)ViewState["imageDisploy"];
                if (i == 3)
                {
                    Image1.ImageUrl = "1.jpg";
                    ViewState["imageDisploy"] = 1;
                }
                else
                {
                    i++;
                    Image1.ImageUrl = i.ToString() + ".jpg";
                    ViewState["imageDisploy"] = i;
                }
            }
        }
    }
}