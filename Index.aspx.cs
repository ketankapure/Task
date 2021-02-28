using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Task
{
    
    public partial class Index : System.Web.UI.Page
    {
        string connectionString = @"Data Source=WALTER-BLACK\WALTER_BLACK;Initial Catalog=GSTDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                clear();
            }

        }
        protected void onclick(object sender, EventArgs e)
        {
                        
                using (SqlConnection sqlcon = new SqlConnection(connectionString))
                {
                    sqlcon.Open();
                    SqlCommand sqlcmd = new SqlCommand("gstregproc", sqlcon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@SrNo", Convert.ToInt32(SrNoID.Value == "" ? "0" : SrNoID.Value));
                    sqlcmd.Parameters.AddWithValue("@CompanyName", companyname.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@GSTIN", GSTIN.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@StartDate", start.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@EndDate", end.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@TurnoverAmount", amount.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@ContactEmail", email.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@ContactNumber", phone.Text.Trim());
                    sqlcmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Data inserted successfully')</script>");
                    
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

                
                clear();
                }
            
        }
        void clear()
        {
            companyname.Text = GSTIN.Text = start.Text = end.Text = amount.Text = email.Text = phone.Text = "";
            SrNoID.Value = "";
            
        }
        protected void onclick2(object sender, EventArgs e)
        {

            //Server.Execute("ShowDatabase.aspx");
            Response.Redirect("ShowDatabase.aspx");
            
        }
    }
}