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
    public partial class View_Cart : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_Grid();
            }
        }
        public void bind_Grid()
        {
           string str= "SELECT Cart.Cart_Id,Product.Product_Name, Product.Product_Image, Cart.Cart_Quantity, Cart.Cart_SubTotal FROM Product INNER JOIN Cart ON Product.Product_Id = Cart.Product_Id WHERE Cart.User_Id = "+ Session["regid"]+" AND Cart.Cart_Status = 1";
            DataSet ds = objcon.Fn_Adapter_Dataset(str);
            ViewCart_Grid.DataSource = ds;
            ViewCart_Grid.DataBind();
        }

        protected void ViewCart_Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(ViewCart_Grid.DataKeys[i].Value);
            string del = "Delete from Cart where Cart_Id=" + getid + "";
            objcon.Fn_Exenonquery(del);
            bind_Grid();
        }

        protected void ViewCart_Grid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ViewCart_Grid.EditIndex = e.NewEditIndex;
            bind_Grid();
        }

        protected void ViewCart_Grid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            ViewCart_Grid.EditIndex = -1;
            bind_Grid();
        }

        protected void ViewCart_Grid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(ViewCart_Grid.DataKeys[i].Value);
            TextBox txtqty = (TextBox)ViewCart_Grid.Rows[i].Cells[4].Controls[0];
            int qty = Convert.ToInt32(txtqty.Text);
            string selamt = "select Product.Product_Price from Product inner join Cart on Product.Product_Id=Cart.Product_Id where Cart.Cart_Id=" + id + "";
            string price = objcon.Fn_Exescalar(selamt);
            decimal TotalPrice= Convert.ToDecimal(price);
            decimal SubTotal = TotalPrice * qty;
            string query = "update Cart set Cart_Quantity=" + qty+ ",Cart_SubTotal=" + SubTotal + " where Cart_Id=" + id + "";
            int s = objcon.Fn_Exenonquery(query);
            ViewCart_Grid.EditIndex = -1;
            bind_Grid();
        }

        protected void ViewCart_ConfirmBtn_Click(object sender, EventArgs e)
        {
            string dt = Convert.ToDateTime(DateTime.Now.ToShortDateString()).ToString("yyyy-MM-dd");
            string sel1 = "select Product_Id from Cart where User_Id=" + Session["regid"] + " and Cart_Status=1";
            SqlDataReader dr = objcon.Fn_Exereader(sel1);
            List<int> PidList = new List<int>();
            while (dr.Read())
            {
                PidList.Add(Convert.ToInt32(dr["Product_Id"]));
            }
            foreach (int pid in PidList)
            {
                string sel2 = "select Cart_Quantity,Cart_SubTotal from Cart where Product_id=" + pid + " and User_Id=" + Session["regid"] + "";
                SqlDataReader dr1 = objcon.Fn_Exereader(sel2);
                int qty = 0, subtot = 0;
                while (dr1.Read())
                {
                    qty = Convert.ToInt32(dr1["Cart_Quantity"]);
                    subtot = Convert.ToInt32(dr1["Cart_SubTotal"]);
                }
                string ins1 = "insert into Order_Tab values(" + Session["regid"] + "," + pid + "," + qty + "," + subtot + ",'" + dt + "','Order')";
                objcon.Fn_Exenonquery(ins1);        
                string updt1 = "update Cart set Cart_Status=0 where Product_id=" + pid + " and User_Id=" + Session["regid"] + " and Cart_Status=1";
                objcon.Fn_Exenonquery(updt1);
            }
            string sel3 = "select sum(Order_SubTotal) from Order_Tab where User_Id=" + Session["regid"] + " and Order_Status='Order'";
            string Total = objcon.Fn_Exescalar(sel3);
            decimal GrandTot = Convert.ToDecimal(Total);
            string ins2 = "insert into Payment values(" + Session["regid"] + "," + GrandTot + ",'" + dt + "')";
            objcon.Fn_Exenonquery(ins2);
            Response.Redirect("ViewBill.aspx");
        }
    }
}