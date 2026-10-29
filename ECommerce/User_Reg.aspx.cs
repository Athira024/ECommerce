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
    public partial class User_Reg : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserReg_btn_Click(object sender, EventArgs e)
        {
            string sel = "select max(Reg_Id) from Login";
            string maxregid = objcon.Fn_Exescalar(sel);
            int reg_id = 0;
            if (maxregid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                reg_id = newregid + 1;

            }
            string ins = "insert into User_Reg values(" + reg_id + ",'" + UserReg_nametb1.Text + "','" + UserReg_agetb2.Text + "','" + UserReg_emailtb3.Text + "','" + UserReg_addtb4.Text + "','" + UserReg_pintb5.Text + "','" + UserReg_phtb6.Text + "','Active')";
            int i = objcon.Fn_Exenonquery(ins);
            if (i == 1)
            {
                string inslog = "insert into Login values(" + reg_id + ",'" + UserReg_unatb7.Text + "','" + UserReg_pwdtb8.Text + "','User')";
                int j = objcon.Fn_Exenonquery(inslog);
                if (i == 1 && j == 1)
                {
                    UserReg_displayl9.Visible = true;
                    UserReg_displayl9.Text = "Successfully Registered";
                }
            }
            else
            {
                UserReg_displayl9.Text = "Invalid Entry";
            }
        }
    }
}