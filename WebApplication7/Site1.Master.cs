using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Net.Mime;

namespace WebApplication7
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }


        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/AboutUs.aspx");
        }


        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ContactUs.aspx");
        }

        protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/InsuranceType.aspx");
        }
        protected void send_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(to.Text);/////
                mailMessage.From = new MailAddress("my.events.invitation@gmail.com");////
                mailMessage.Subject = "";// head.Text;
                mailMessage.Body = "מייל לחזרה " + to.Text + "\n\n" ;
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Timeout = 10000;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential("my.events.invitation@gmail.com", "hlamash1");///
          
                smtpClient.Send(mailMessage);
                error.Text = "E-mail send!";

            }
            catch (Exception ex)
            {
                error.Text = "E-mail don't send!";

            }
        }

        protected void to_TextChanged(object sender, EventArgs e)
        {
       
            to.Text = " ";
        }



    }
}