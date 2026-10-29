using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ECommerce
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            string str = "select count(Reg_Id) from Login where Username='" + Login_una_tb1.Text + "' and Password='" + Login_pwd_tb2.Text + "'";
            string cid = objcon.Fn_Exescalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select Reg_Id from Login where Username='" + Login_una_tb1.Text + "' and Password='" + Login_pwd_tb2.Text + "'";
                //string regid = objcon.Fn_Exescalar(str1);
                //Session["regid"] = regid;
                int regid = Convert.ToInt32(objcon.Fn_Exescalar(str1));
                Session["regid"] = regid;

                string str2 = "select Log_Type from Login where Username='" + Login_una_tb1.Text + "' and Password='" + Login_pwd_tb2.Text + "'";
                string logtype = objcon.Fn_Exescalar(str2);
                if (logtype == "Admin")
                {
                    Response.Redirect("Admin_Home.aspx");
                }
                else if (logtype == "User" )
                {
                    string str3 = "select User_Status from User_Reg where User_Id=" + regid;
                    string status = objcon.Fn_Exescalar(str3);
                    if (status == "Active")
                    {
                        Response.Redirect("User_Home.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Your account is inactive');</script>");
                    }
                }
            }
            else
            {
                Login_display_l3.Visible = true;
                Login_display_l3.Text = "Invalid username and password";
            }

        }
    }
}