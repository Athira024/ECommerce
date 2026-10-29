using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace ECommerce
{
    public partial class Feedback_Reply : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)  

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void FeedBack_ReplyBtn_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string sel = "SELECT User_Name, User_Email FROM User_Reg WHERE User_Id=" + id;
            SqlDataReader dr = objcon.Fn_Exereader(sel);
            string UserName = "";
            string UserEmail = "";
            if (dr.Read())
            {
                UserName = dr["User_Name"].ToString();
                UserEmail = dr["User_Email"].ToString();
            }
            dr.Close();
            string Subj = "Reply To Your Feedback";
            string body = FeedbackReply_TB.Text;
            SendEmail2("Minnu", "minnuadmin@gmail.com", "xmdt rhmr ladn qfmc", UserName,UserEmail,Subj,body);
            string updt = "UPDATE Feedback SET Reply_Msg='" + convertQuotes(FeedbackReply_TB.Text) + "', Feedback_Status='Inactive' WHERE User_Id=" + id;
            objcon.Fn_Exenonquery(updt);
            Label1.Visible = true;
            Label1.Text = "Reply mail send successfully..!";
        }
        public string convertQuotes(string str)
        {
            return str.Replace("'", "''");
        }
    }
    }
