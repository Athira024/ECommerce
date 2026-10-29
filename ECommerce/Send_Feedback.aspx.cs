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
    public partial class Send_Feedback : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendFeedback_Btn_Click(object sender, EventArgs e)
        {
            string dt = Convert.ToDateTime(DateTime.Now.ToShortDateString()).ToString("yyyy-MM-dd");
            string ins = "insert into Feedback values (" + SendFeedback_ProdIdTB.Text + "," + Session["regid"] + ",'" + SendFeedback_TB.Text + "','Null','"+dt+"','Active')";
            int i = objcon.Fn_Exenonquery(ins);
            if (i == 1)
            {
                SendFeedback_Lbl.Visible = true;
                SendFeedback_Lbl.Text = "Feedback send successfully...";
            }
            else
            {
                SendFeedback_Lbl.Text = "Unable to send feedback...";
            }
        }
       
    }
}
