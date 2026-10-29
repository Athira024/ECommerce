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
    public partial class Add_Product : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string sel = "select Category_Id,Category_Name from Category where Category_Status='Available'";
                DataSet ds = objcon.Fn_Adapter_Dataset(sel);
                AddProd_CatDL.DataSource = ds;
                AddProd_CatDL.DataTextField = "Category_Name";
                AddProd_CatDL.DataValueField = "Category_Id";
                AddProd_CatDL.DataBind();
                AddProd_CatDL.Items.Insert(0, "--Select--");

            }
        }

        protected void AddProd_Btn_Click(object sender, EventArgs e)
        {
            string path = "~/Product_Images/" + AddProd_ImgFu.FileName;
            AddProd_ImgFu.SaveAs(MapPath(path));
            string strinsert = "insert into Product values (" + AddProd_CatDL.SelectedItem.Value + ",'" + AddProd_NameTb.Text + "','"+path+"',"+ AddProd_PriceTb.Text+",'"+ convertQuotes(AddProd_DescTb.Text)+"',"+AddProd_StockTb.Text+",'Available')";
            int i = objcon.Fn_Exenonquery(strinsert);
            if (i == 1)
            {
                AddProd_DispL.Visible = true;
                AddProd_DispL.Text = "Inserted";
            }
        }
        public string convertQuotes(string str)
        {
            return str.Replace("'", "''");
        }
    }
}