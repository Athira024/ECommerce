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
    public partial class User_Home : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Category where Category_Status='Available'";
                DataSet ds = objcon.Fn_Adapter_Dataset(s);
                UserHome_DL.DataSource = ds;
                UserHome_DL.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int CategoryId = Convert.ToInt32(e.CommandArgument);
            Session["Category_Id"] = CategoryId;
            Response.Redirect("View_All_Products.aspx");
        }
    }
}