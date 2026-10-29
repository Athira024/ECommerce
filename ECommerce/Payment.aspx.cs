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
    public partial class Payment : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Pay_AccNo1TB_TextChanged(object sender, EventArgs e)
        {
            string sel = "select count(Account_Id) from Account where Account_No='" + Pay_AccNo1TB.Text + "'";
            int cid = Convert.ToInt32(objcon.Fn_Exescalar(sel));
            if (cid > 0)
            {
                Label7.Visible = true;
                Label7.Text = "Account number already exists, You can proceed with the payment...!";
            }
            else
            {
                Label7.Visible = false;
            }
        }
        protected void Pay_InsertBtn_Click(object sender, EventArgs e)
        {
            string ins = "insert into Account values(" + Session["regid"] + ",'"+ Pay_AccTypeTB.Text+"','"+Pay_AccNo1TB.Text+"',"+Pay_BalTB.Text+")";
            int i=objcon.Fn_Exenonquery(ins);
            if (i == 1)
            {
                Label9.Visible = true;
                Label9.Text = "Account details inserted successfully...";
            }
            else
            {
                Label9.Text = "Insertion failed...";
            }
        }
        protected void Pay_Btn_Click(object sender, EventArgs e)
        {
            wcfRef1.ServiceClient obj = new wcfRef1.ServiceClient();
            string bal = obj.checkBalance(Pay_AccNo2TB.Text);
            string uid = Session["regid"].ToString();
            string s = "select Account_No from Account where User_Id=" + uid;
            string acno = objcon.Fn_Exescalar(s).ToString();
            string result = obj.MakePayment(acno, uid);
            Response.Write("<script>alert('UID = " + uid +"\\nAccount = " + acno + "\\nResult = " + result + "');</script>");
            string sel = "select Product_Id from Order_Tab where User_Id=" + Session["regid"] + " and Order_Status='Order'";
            SqlDataReader dr = objcon.Fn_Exereader(sel);
            List<int> PidList = new List<int>();
            while (dr.Read())
            {
                PidList.Add(Convert.ToInt32(dr["Product_Id"]));
            }
            foreach (int pid in PidList)
            {
                string updt = "update Order_Tab set Order_Status='Paid' where Product_id=" + pid + " and User_Id=" + Session["regid"] + " and " +
                    "Order_Status='Order'";
                objcon.Fn_Exenonquery(updt);
                string sel1 = "select Product_Stock from Product where Product_id=" + pid + "";
                int oldStock= Convert.ToInt32(objcon.Fn_Exescalar(sel1));
                string sel2= "select Order_Quantity from Order_Tab where Product_id=" + pid + " and User_Id=" + Session["regid"] + " and " +
                    "Order_Status='Paid'";
                int Qty = Convert.ToInt32(objcon.Fn_Exescalar(sel2));
                int newStock = oldStock - Qty;
                string updt2= "update Product set Product_Stock="+newStock+ " where Product_id=" + pid + "";
                objcon.Fn_Exenonquery(updt2);
            }          
        }
    }
}