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
    public partial class Address : System.Web.UI.Page
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["U_NAME"] != null)
                {
                    TextBox1.Text = Session["U_NAME"].ToString();
                }
                else
                {
                    TextBox1.Text = null;
                    Response.Redirect("~/Register.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            OracleConnection conn = new OracleConnection(CS);

            OracleCommand camd = new OracleCommand("select count(*) from USER_TABLE where U_NAME = '" + TextBox1.Text + "'", conn);
            conn.Open();
            temp = Convert.ToInt32(camd.ExecuteScalar().ToString());
            if (temp == 1)
            {
                using (OracleCommand cmd = new OracleCommand("insert into ADDRESS (APP_ADD_ID,APP_NAME,FLOOR_NUM,ROAD,APP_ADD,AREA_NAME,CITY) values (U_ID_SEQ.NEXTVAL,'" + TextBoxAppName.Text + "','" + TextBoxFloor.Text + "','" + TextBoxRoad.Text + "','" + TextBoxAppArea.Text + "','" + TextBoxCity.Text + "','" + TextBoxCountry.Text + "')", conn))
                {
                    cmd.ExecuteNonQuery();
                    using (OracleCommand comd = new OracleCommand("select APP_ADD_ID from ADDRESS where APP_NAME = '" + TextBoxAppName.Text + "'", conn))
                    {
                        using (OracleCommand oracle = new OracleCommand("select USER_ID from USER_TABLE where U_NAME='" + TextBox1.Text + "'", conn))
                        {
                            string u_id = oracle.ExecuteScalar().ToString();
                            Session["U_ID"] = u_id;

                            string id = comd.ExecuteScalar().ToString();
                            Session["ADDId"] = id;
                            Response.Redirect("~/Allapartments.aspx");

                        }

                        //string id = comd.ExecuteScalar().ToString();
                        //Session["ADDId"] = id;
                        //Response.Redirect("~/Allapartments.aspx");
                    }
                }
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Name is not correct";
            }
            //conn.Open();

            //if (Convert.ToBoolean(camd.ExecuteNonQuery()))
            //{
            //    //using(OracleCommand comd = new OracleCommand("select APP_ADD_ID from ADDRESS where APP_NAME = '" +TextBoxAppName.Text + "'"))))


            //    Label1.ForeColor = System.Drawing.Color.Green;
            //    Label1.Text = "Data Saved In The Database";

            //}
            //else
            //{
            //    Label1.ForeColor = System.Drawing.Color.Red;
            //    Label1.Text = "Data Cannot Saved In The Database";
            //}









        }

    }
}