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
    public partial class Register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (!(string.IsNullOrEmpty(TextBox1.Text.Trim())))
                {
                    TextBox2.Attributes["value"] = TextBox2.Text;
                }
            }
            
            
                if (!(string.IsNullOrEmpty(TextBox2.Text.Trim())))
                {
                    TextBox2.Attributes["value"] = TextBox2.Text;
                }
                if (!(string.IsNullOrEmpty(TextBox3.Text.Trim())))
                {
                    TextBox3.Attributes["value"] = TextBox3.Text;
                }
            
            //dbhelper = new mzgsDBcon("localhost", "APARTMENT", "APARTMENT", "akash11");
        }
        

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox6.Text = Calendar1.SelectedDate.ToString("dd-MMM-yy");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                string CS = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
                OracleConnection conn = new OracleConnection(CS);
                using (OracleCommand cmd = new OracleCommand("insert into USER_TABLE (USER_ID,U_NAME,U_PASS,FULLNAME,CONTACT,EMAIL,DOB,U_LOCATION) values (U_ID_SEQ.NEXTVAL,'" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "')", conn))
                {
                    //cmd.Parameters.("@U_NAME",TextBox1.Text);
                    //cmd.Parameters.AddWithValue("@U_PASS",TextBox3.Text);
                    //cmd.Parameters.AddWithValue("@FULLNAME", TextBox7.Text);
                    //cmd.Parameters.AddWithValue("@CONTACT",TextBox5.Text);
                    //cmd.Parameters.AddWithValue("@EMAIL",TextBox4.Text);
                    //cmd.Parameters.AddWithValue("@DOB",TextBox6.Text);
                    //cmd.Parameters.AddWithValue("@U_LOCATION",TextBox8.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Text = "Data Saved In The Database";
                }
                 //using(OracleCommand comd = new OracleCommand("select USER_ID from USER_TABLE where U_NAME = '"+TextBox1.Text+"'"))
                 //{
                     
                 //    string id= comd.ExecuteScalar().ToString();
                 //    Session["Id"] = id;
                 //}


                
            }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            TextBox6.Text = Calendar1.SelectedDate.ToString("dd-MMM-yy");
        }

       
            //    Label1.Text = System.Drawing.Color.Red.ToString();
            //    Label1.Text = "Data Cannot Saved In The Database";
           
        }
    }
