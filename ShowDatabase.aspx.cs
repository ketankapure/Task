using System;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

using System.IO;

using System.Configuration;

namespace Task
{
    public partial class Summary : System.Web.UI.Page
    {
        static Boolean orderidfound;
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
            findorderdate(Label1.Text);


            if (orderidfound == true)
            {
                
                Label2.Text = "Record Found";
                GridView2.Visible = true;

            }
            else
            {
                Label2.Text = "Record Not Found";
                
            }
        }

        private void findorderdate(string Orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("Sr.Noo");
            dt.Columns.Add("Company Namee");
            dt.Columns.Add("GSTINo");
            dt.Columns.Add("StartDatee");
            dt.Columns.Add("EndDatee");
            dt.Columns.Add("TurnoverAmounte");
            dt.Columns.Add("ContactEmaile");
            dt.Columns.Add("ContactNumbere");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Ssearch";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@name", Orderid);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            
            while (i < totalrows)
            {
                dr = dt.NewRow();
               dr["Sr.Noo"] = ds.Tables[0].Rows[i]["SrNo"].ToString();
                dr["Company Namee"] = ds.Tables[0].Rows[i]["CompanyName"].ToString();
                dr["GSTINo"] = ds.Tables[0].Rows[i]["GSTIN"].ToString();
                dr["StartDatee"] = ds.Tables[0].Rows[i]["StartDate"].ToString();
                dr["EndDatee"] = ds.Tables[0].Rows[i]["EndDate"].ToString();
                dr["TurnoverAmounte"] = ds.Tables[0].Rows[i]["TurnoverAmount"].ToString();
                dr["ContactEmaile"] = ds.Tables[0].Rows[i]["ContactEmail"].ToString();
                dr["EndDatee"] = ds.Tables[0].Rows[i]["EndDate"].ToString();
                dr["ContactNumbere"] = ds.Tables[0].Rows[i]["ContactNumber"].ToString();
                dt.Rows.Add(dr);
                i = i + 1;
                
            }
            GridView2.DataSource = dt;
            GridView2.DataBind();




            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                
                orderidfound = true;
            }
            else
            {
                orderidfound = false;
            }

            con.Close();
        }
    }

   
    
}