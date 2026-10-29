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
    public partial class View_Users : System.Web.UI.Page
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
            string str = "SELECT * FROM User_Reg where User_Status='Active'";
            DataSet ds = objcon.Fn_Adapter_Dataset(str);
            View_UserGrid.DataSource = ds;
            View_UserGrid.DataBind();
        }
        protected void View_UserGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            View_UserGrid.EditIndex = e.NewEditIndex;
            bind_Grid();
        }
        protected void View_UserGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            View_UserGrid.EditIndex = -1;
            bind_Grid();
        }
        protected void View_UserGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(View_UserGrid.DataKeys[i].Value);
            TextBox txtstatus = (TextBox)View_UserGrid.Rows[i].Cells[6].Controls[0];
            string updt = "update User_Reg set User_Status='" + txtstatus.Text + "' where User_Id=" + id + "";
            int s = objcon.Fn_Exenonquery(updt);
            View_UserGrid.EditIndex = -1;
            bind_Grid();
        }
    }
}