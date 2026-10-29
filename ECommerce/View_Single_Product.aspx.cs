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
    public partial class View_Single_Product : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                View_OneProdPanel.Visible = true;
                string sel = "select Product_Image,Product_Name,Product_Description,Product_Price from Product where Product_Id=" + Session["Product_Id"] + "";
                SqlDataReader dr = objcon.Fn_Exereader(sel);
                while (dr.Read())
                {
                    View1Prod_Img.ImageUrl = dr["Product_Image"].ToString();
                    View1Prod_NameL.Text = dr["Product_Name"].ToString();
                    View1Prod_DescL.Text = dr["Product_Description"].ToString();
                    View1Prod_PriceL.Text = dr["Product_Price"].ToString();
                }
                string selstk = "select Product_Stock from Product where Product_Id=" + Session["Product_Id"] + "";
                SqlDataReader dr1 = objcon.Fn_Exereader(selstk);
                if (dr1.Read())
                {
                    int stock = Convert.ToInt32(dr1["Product_Stock"]);

                    for (int i = 1; i <= stock; i++)
                    {
                        View1Prod_QtyDDL.Items.Add(i.ToString());
                    }
                }
            }

        }

        protected void View1Prod_CartBtn_Click(object sender, EventArgs e)
        {
            int quantity = Convert.ToInt32(View1Prod_QtyDDL.SelectedItem.Text);
            decimal price = Convert.ToDecimal(View1Prod_PriceL.Text);

            decimal totalPrice = quantity * price;

            string inscart = "insert into Cart values (" + Session["Product_Id"] + "," + Session["regid"] + "," + View1Prod_QtyDDL.SelectedItem.Text + "," + totalPrice + ",'1')";
            int i = objcon.Fn_Exenonquery(inscart);
            if (i == 1)
            {
                View1Prod_DispL.Visible = true;
                View1Prod_DispL.Text = "Product added to cart successfully...";
            }
            else
            {
                View1Prod_DispL.Text = "Product not added to cart...";
            }
        }

        protected void View1Prod_ContinueBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Home.aspx");
        }

        protected void View1Prod_ViewcartBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Cart.aspx");
        }
    }
}