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
    public partial class Allapartments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string AddId = Session["u_id"].ToString();
            //Label1.Text = AddId;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                

                
                string CS = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
                OracleConnection conn = new OracleConnection(CS);
                //string U_ID = Session["U_ID"].ToString();
                //string ADD_ID = Session["ADDId"].ToString();
                using (OracleCommand cmd = new OracleCommand("insert into APARTMENT (APP_ID,APP_TYPE,APP_SIZE,APP_DATE,PRICE,NO_OF_ROOMS,FEATURE,USER_ID,APP_ADD_ID) values (U_ID_SEQ.NEXTVAL,'" + TextBoxAType.Text + "','" + TextBoxASize.Text + "','" + TextBoxAdate.Text + "','" + TextBoxAprice.Text + "','" + TextBoxAroom.Text + "','" + TextBoxAfeature.Text + "','" + Session["U_ID"].ToString().Trim() + "','" + Session["ADDId"].ToString().Trim() + "')", conn))
                {
                   
                    conn.Open();
                    //cmd.ExecuteNonQuery();

                    if (Convert.ToBoolean(cmd.ExecuteNonQuery()))
                    {

                        Label1.ForeColor = System.Drawing.Color.Green;
                        Label1.Text = "Data Saved In The Database";
                        Response.Redirect("~/Allapartments.aspx");
                    }
                    else
                    {
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Text = "Data Cannot Saved In The Database";
                    }





                }



            }

        }
    }
}