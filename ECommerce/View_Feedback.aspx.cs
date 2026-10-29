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
    public partial class View_Feedback : System.Web.UI.Page
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
            string str = "SELECT User_Reg.User_Id,User_Reg.User_Name, User_Reg.User_Email, Feedback.Product_Id, Feedback.Feedback_Msg, Feedback.Feedback_Date FROM User_Reg INNER JOIN Feedback ON User_Reg.User_Id = Feedback.User_Id where Feedback.Feedback_Status='Active'";
            DataSet ds = objcon.Fn_Adapter_Dataset(str);
            ViewFeedback_Grid.DataSource = ds;
            ViewFeedback_Grid.DataBind();
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("Feedback_Reply.aspx?id="+id);
        }
    }
}