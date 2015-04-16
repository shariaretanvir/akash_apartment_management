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
    public partial class Login : System.Web.UI.Page
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            OracleConnection conn = new OracleConnection(CS);
            using (OracleCommand cmd = new OracleCommand("select count(*) from USER_TABLE where U_NAME = '" + TextBox1.Text + "' ", conn))
            {
                conn.Open();
                temp=Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    OracleCommand oraclecmd = new OracleCommand("select U_PASS from USER_TABLE where U_NAME = '" + TextBox1.Text + "' ", conn);
                    string pass = oraclecmd.ExecuteScalar().ToString();
                    if (pass == TextBox2.Text)
                    {
                        Label1.ForeColor = System.Drawing.Color.Green;
                        Label1.Text = "You are logged in";
                        Session["U_NAME"] = TextBox1.Text;
                        
                        //string cs = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
                        //OracleConnection connn = new OracleConnection(cs);
                        using (OracleCommand comd = new OracleCommand("select USER_ID from USER_TABLE where U_NAME = '" + TextBox1.Text + "' ", conn))
                        {
                            //conn.Open();
                            string id = comd.ExecuteScalar().ToString();
                            Session["ID"] = id;
                        }
                        Response.Redirect("~/Address.aspx" );
                    }
                    else
                    {
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Text = "Wrong Password";
                    }
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Wrong Username";
                }
            }
        }
    }
}