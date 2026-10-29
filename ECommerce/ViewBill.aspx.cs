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
    public partial class ViewBill : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str1 = "select User_Name,User_Phone from User_Reg where User_Id=" + Session["regid"] + "";
                SqlDataReader dr = objcon.Fn_Exereader(str1);
                if (dr.Read())
                {
                    Bill_UnameLbl.Text = dr["User_Name"].ToString();
                    Bill_UserPhLbl.Text = dr["User_Phone"].ToString();
                }
                string str2 = "select Order_Date from Order_Tab where User_Id=" + Session["regid"] + " and Order_Status='Order'";
                SqlDataReader dr1 = objcon.Fn_Exereader(str2);
                if (dr1.Read())
                {
                    Bill_OrdDateLbl.Text=Convert.ToDateTime(dr1["Order_Date"]).ToString("dd/MM/yyyy");
                }
                bind_Grid();
                string str3 = "select sum(Order_SubTotal) from Order_Tab where User_Id=" + Session["regid"] + " and Order_status='Order' ";
                string Total = objcon.Fn_Exescalar(str3);
                Bill_GTotLbl.Text = Total;
            }
            
        }
        public void bind_Grid()
        {
            string str = "SELECT Product.Product_Name, Order_Tab.Order_Quantity, Order_Tab.Order_SubTotal FROM Product INNER JOIN Order_Tab ON " + "Product.Product_Id = Order_Tab.Product_Id where User_Id=" + Session["regid"]+ " and Order_Status='Order'";
            DataSet ds = objcon.Fn_Adapter_Dataset(str);
            Bill_Grid.DataSource = ds;
            Bill_Grid.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}