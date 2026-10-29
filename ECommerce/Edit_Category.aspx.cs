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
    public partial class Edit_Category : System.Web.UI.Page
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
            string s = "select * from Category";
            DataSet ds = objcon.Fn_Adapter_Dataset(s);
            Edit_CatGrid.DataSource = ds;
            Edit_CatGrid.DataBind();
        }

        protected void Edit_CatGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Edit_CatGrid.EditIndex = e.NewEditIndex;
            bind_Grid();
        }

        protected void Edit_CatGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Edit_CatGrid.EditIndex = -1;
            bind_Grid();
        }

        protected void Edit_CatGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(Edit_CatGrid.DataKeys[i].Value);
            FileUpload fu = (FileUpload)Edit_CatGrid.Rows[i].FindControl("FileUpload1");
            TextBox txtdesc = (TextBox)Edit_CatGrid.Rows[i].Cells[3].Controls[0];
            TextBox txtstatus = (TextBox)Edit_CatGrid.Rows[i].Cells[4].Controls[0];
            string path = " ";
            if (fu.HasFile)
            {
                path = "~/Category_Images/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            string query = "update Category set Category_Image='" + path + "',Category_Description='" + txtdesc.Text + "',Category_Status='" + txtstatus.Text + "' where Category_Id=" + id + "";
            int s = objcon.Fn_Exenonquery(query);
            Edit_CatGrid.EditIndex = -1;
            bind_Grid();
        }
    }
}