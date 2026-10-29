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
    public partial class Edit_Product : System.Web.UI.Page
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
            string s = "select * from Product";
            DataSet ds = objcon.Fn_Adapter_Dataset(s);
            Edit_ProGrid.DataSource = ds;
            Edit_ProGrid.DataBind();
        }
        protected void Edit_ProGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Edit_ProGrid.EditIndex = e.NewEditIndex;
            bind_Grid();
        }

        protected void Edit_ProGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(Edit_ProGrid.DataKeys[i].Value);
            FileUpload fu = (FileUpload)Edit_ProGrid.Rows[i].FindControl("FileUpload1");
            TextBox txtprice = (TextBox)Edit_ProGrid.Rows[i].Cells[3].Controls[0];
            TextBox txtdesc = (TextBox)Edit_ProGrid.Rows[i].Cells[4].Controls[0];
            TextBox txtstock = (TextBox)Edit_ProGrid.Rows[i].Cells[5].Controls[0];
            TextBox txtstatus = (TextBox)Edit_ProGrid.Rows[i].Cells[6].Controls[0];
            string path = " ";
            if (fu.HasFile)
            {
                path = "~/Product_Images/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            string query = "update Product set Product_Image='" + path + "',Product_Price=" + txtprice.Text + ",Product_Description='" + txtdesc.Text + "',Product_Stock='" + txtstock.Text + "',Product_Status='" + txtstatus.Text + "' where Product_Id=" + id + "";
            int s = objcon.Fn_Exenonquery(query);
            Edit_ProGrid.EditIndex = -1;
            bind_Grid();
        }

        protected void Edit_ProGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Edit_ProGrid.EditIndex = -1;
            bind_Grid();
        }

        protected void Edit_ProGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Edit_ProGrid.PageIndex = e.NewPageIndex;
            bind_Grid();
        }
    }
}