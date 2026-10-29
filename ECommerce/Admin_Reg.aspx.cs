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
    public partial class Admin_Reg : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdminReg_btn_Click(object sender, EventArgs e)
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
            string ins = "insert into Admin_Reg values(" + reg_id + ",'" + AdminReg_nametb1.Text + "','" + AdminReg_emailtb2.Text + "')";
            int i = objcon.Fn_Exenonquery(ins);
            if (i == 1)
            {
                string inslog = "insert into Login values(" + reg_id + ",'" + AdminReg_unatb3.Text + "','" + AdminReg_pwdtb4.Text + "','Admin')";
                int j = objcon.Fn_Exenonquery(inslog);
                if (i == 1 && j == 1)
                {
                    AdminReg_displayl5.Visible = true;
                    AdminReg_displayl5.Text = "Successfully Registered";
                }
            }
            else
            {
                AdminReg_displayl5.Text = "Invalid Entry";
            }
        }
    }
}