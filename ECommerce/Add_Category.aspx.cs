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
    public partial class Add_Category : System.Web.UI.Page
    {
        ConnectionClass objcon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCat_Btn_Click(object sender, EventArgs e)
        {
            string path = "~/Category_Images/" + AddCat_ImgFu.FileName;
            AddCat_ImgFu.SaveAs(MapPath(path));
            string strinsert = "insert into Category values ('" + AddCat_NameTb.Text + "','" + path+ "','" + convertQuotes(AddCat_DescTb.Text) + "','Available')";
            int i = objcon.Fn_Exenonquery(strinsert);
            if (i == 1)
            {
                AddCat_DispL.Visible = true;
                AddCat_DispL.Text = "Inserted";
            }
        }
        public string convertQuotes(string str)
        {
            return str.Replace("'", "''");
        }
    }
}