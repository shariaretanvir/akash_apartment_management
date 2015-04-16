using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

namespace OracleProject
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string CS = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            //OracleConnection conn = new OracleConnection(CS);
            //using (OracleCommand cmd = new OracleCommand("plsql", conn))
            //{
            //    cmd.CommandType = CommandType.StoredProcedure;
            //    conn.Open();
            //    OracleDataReader rdr = cmd.ExecuteReader();
            //    GridView1.DataSource = rdr;
            //    GridView1.DataBind();
            //}
            //Label1.Text = Session["U_ID"].ToString();
            //Label2.Text = Session["ADDId"].ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar1.SelectedDate.ToString("dd-MMM-yy");
        }
    }
}