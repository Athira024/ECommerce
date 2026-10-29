using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
	SqlConnection con = new SqlConnection(@"server=LAPTOP-JV3FS7B9\SQLEXPRESS;database=Ebuy;Integrated Security=true");
	public string checkBalance(string Acno)
    {
		string str = "select Balance_Amount from Account where Account_No=" + Acno + "";
		SqlCommand cmd = new SqlCommand(str, con);
		con.Open();
		string bal = " ";
		SqlDataReader dr = cmd.ExecuteReader();
		while (dr.Read())
		{
			bal = dr["Balance_Amount"].ToString();
		}
		con.Close();
		return bal;
	}
    public string MakePayment(string Acno, string uid)
    {
        con.Open();
        string sel = "select Balance_Amount from Account where Account_No=" + Acno+"";
        SqlCommand cmd1 = new SqlCommand(sel, con);
        string bal = cmd1.ExecuteScalar().ToString();
        decimal balance = Convert.ToDecimal(bal);

        string sel1 = "select sum(Order_SubTotal) from Order_Tab where User_Id=" + uid+ " and Order_Status='Order'";
        SqlCommand cmd2 = new SqlCommand(sel1, con);
        string total = cmd2.ExecuteScalar().ToString();
        decimal grandTotal = Convert.ToDecimal(total);
        if (balance >= grandTotal)
        {
            decimal newBalance = balance - grandTotal;
            string updt = "update Account set Balance_Amount=" + newBalance +" where Account_No=" + Acno+"";
            SqlCommand cmd3 = new SqlCommand(updt, con);
            cmd3.ExecuteNonQuery();
            con.Close();
            return "Payment Success";
        }
        else
        {
            con.Close();
            return "Insufficient Balance";
        }
    }

    public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}

	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}
}
