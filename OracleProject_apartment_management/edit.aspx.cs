using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Text;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

namespace OracleProject
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["id"];
            string cs = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            OracleConnection conn = new OracleConnection(cs);
            using (OracleCommand cmd = new OracleCommand("select APP_TYPE from APARTMENT where APP_ID = '" + Label1.Text + "'", conn))
            {
                conn.Open();
                string type = cmd.ExecuteScalar().ToString();
                TextBox1.Text = type;
            }
            using (OracleCommand cmd1 = new OracleCommand("select APP_SIZE from APARTMENT where APP_ID = '" + Label1.Text + "'", conn))
            {
                //conn.Open();
                string type = cmd1.ExecuteScalar().ToString();
                TextBox2.Text = type;
            }
            using (OracleCommand cmd2 = new OracleCommand("select APP_DATE from APARTMENT where APP_ID = '" + Label1.Text + "'", conn))
            {
                //conn.Open();
                string type = cmd2.ExecuteScalar().ToString();
                TextBox3.Text = type;
            }
            using (OracleCommand cmd3 = new OracleCommand("select PRICE from APARTMENT where APP_ID = '" + Label1.Text + "'", conn))
            {
                //conn.Open();
                string type = cmd3.ExecuteScalar().ToString();
                TextBox4.Text = type;
            }
            using (OracleCommand cmd4 = new OracleCommand("select NO_OF_ROOMS from APARTMENT where APP_ID = '" + Label1.Text + "'", conn))
            {
                //conn.Open();
                string type = cmd4.ExecuteScalar().ToString();
                TextBox5.Text = type;
            }
            using (OracleCommand cmd5 = new OracleCommand("select FEATURE from APARTMENT where APP_ID = '" + Label1.Text + "'", conn))
            {
                //conn.Open();
                string type = cmd5.ExecuteScalar().ToString();
                TextBox6.Text = type;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["id"];
            string cs = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            OracleConnection conn = new OracleConnection(cs);
            using (OracleCommand cmd = new OracleCommand("UPDATE APARTMENT SET APP_TYPE='" + TextBox1.Text + "', APP_SIZE='" + TextBox2.Text + "' , PRICE='" + TextBox4.Text + "',NO_OF_ROOMS='" + TextBox5.Text + "',FEATURE='" + TextBox6.Text + "' WHERE APP_ID= '" + Label1.Text + "'",conn))
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/ShowYourAds.aspx");
                //OracleDataAdapter da = new OracleDataAdapter(cmdUpdate);
                //DataSet ds = new DataSet();
                
            }

        }

        

        
    }
}