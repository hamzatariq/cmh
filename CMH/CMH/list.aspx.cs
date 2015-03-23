using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Linq;
using System.Collections.Generic;

namespace CMH
{
    public partial class list : System.Web.UI.Page
    {
         private string connectionString = WebConfigurationManager.ConnectionStrings["CMH"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                FTime();
            }
        }

        protected void FTime()
        {
               

        // Define the Select statement.
        // Three pieces of information are needed: the unique id,
        // and the first and last name.
        string selectSQL = "SELECT Invoice#, InvoiceDate, Amount , Chq# FROM Receivings";

        // Define the ADO.NET objects.
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        SqlDataReader reader;

        // Try to open database and read information.
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            
            
            List<myclass> lists = new List<myclass>();
            GridView1.DataSource = lists;
            GridView1.DataBind();
            
        
            while (reader.Read())
            {
              
                 
            myclass obj = new myclass();
            obj.InvoiceNo = reader["Invoice#"].ToString();
            obj.Amount = reader["Amount"].ToString();
            obj.ChqNo = reader["Chq#"].ToString();
            lists.Add(obj);
            
            GridView1.DataBind();
                
                
                
        
            }
            reader.Close();
        }
        catch (Exception err)
        {
            Label1.Text = "Error reading Data List. ";
            Label1.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
  }           
 }
}
