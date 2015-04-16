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
    public partial class ShowYourAds_aspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["U_NAME"] != null && Session["ID"] !=null)
                {
                    //Label lable1 = new Label();
                    Label1.Text = Session["U_NAME"].ToString();
                    //Label2.Text = Session["ID"].ToString();
                    string cs = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
                    OracleConnection conn = new OracleConnection(cs);
                    using (OracleCommand comd = new OracleCommand("select * from APARTMENT where USER_ID = '" + Session["ID"] + "'", conn))
                    {
                        conn.Open();
                        OracleDataAdapter da = new OracleDataAdapter(comd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                        using (OracleCommand comand = new OracleCommand("select DISTINCT APP_ID from APARTMENT where USER_ID= '" + Session["ID"] + "'", conn))
                        {
                            OracleDataAdapter data = new OracleDataAdapter(comand);
                            DataSet dss = new DataSet();
                            data.Fill(dss);
                            DropDownList1.DataSource = dss;
                            DropDownList1.DataBind();
                        }
                    }


                }


                else
                {
                    Response.Redirect("~/Register.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            OracleConnection conn = new OracleConnection(cs);
            using (OracleCommand cmd = new OracleCommand("delete from APARTMENT where APP_ID = '" + DropDownList1.SelectedItem.Text + "'", conn))
            {
                conn.Open();
                cmd.ExecuteScalar();
                //GridView1.DataBind();
                using (OracleCommand comd = new OracleCommand("select * from APARTMENT where USER_ID = '" + Session["ID"] + "'", conn))
                {
                    OracleDataAdapter da = new OracleDataAdapter(comd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string id =  DropDownList1.SelectedItem.Text;
            Response.Redirect("~/edit.aspx?id="+ id ) ;
        }

        
    }
}