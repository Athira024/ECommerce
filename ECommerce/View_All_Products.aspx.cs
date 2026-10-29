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
    public partial class View_All_Product : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Product where Category_Id="+Session["Category_Id"]+" and Product_Status='Available'";
                DataSet ds = objcon.Fn_Adapter_Dataset(s);
                All_ProdDL.DataSource = ds;
                All_ProdDL.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int ProductId = Convert.ToInt32(e.CommandArgument);
            Session["Product_Id"] = ProductId;
            Response.Redirect("View_Single_Product.aspx");
        }
    }
}