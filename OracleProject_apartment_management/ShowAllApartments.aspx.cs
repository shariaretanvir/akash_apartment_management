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
    public partial class ShowAllApartments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
                OracleConnection conn = new OracleConnection(cs);
                using (OracleCommand cmd = new OracleCommand("SELECT APP_TYPE, APP_SIZE, APP_DATE, PRICE, NO_OF_ROOMS,FEATURE,U_NAME,APP_NAME from APARTMENT JOIN USER_TABLE ON (APARTMENT.USER_ID = USER_TABLE.USER_ID) JOIN ADDRESS ON (ADDRESS.APP_ADD_ID = APARTMENT.APP_ADD_ID)", conn))
                {
                    conn.Open();
                    OracleDataAdapter oda = new OracleDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    oda.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    conn.Close();
                }
            }
            if (!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
                OracleConnection conn = new OracleConnection(cs);
                using (OracleCommand comnd = new OracleCommand("select DISTINCT APP_TYPE from APARTMENT", conn))
                {
                    conn.Open();
                    OracleDataAdapter odaa = new OracleDataAdapter(comnd);
                    DataSet dss = new DataSet();
                    odaa.Fill(dss);
                    DropDownList1.DataSource = dss;
                    DropDownList1.DataBind();
                }
                ListItem lisubcata = new ListItem("Select SubCatagories", "-1");
                DropDownList1.Items.Insert(0, lisubcata);


                //ListItem add = new ListItem("All", "0");
                //DropDownList1.Items.Add(add);
            }
        }
        //select * from APARTMENT where APP_TYPE = '" + DropDownList1.SelectedItem.Text + "'

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            OracleConnection conn = new OracleConnection(CS);
            using (OracleCommand cmd = new OracleCommand("SELECT APP_TYPE, APP_SIZE, APP_DATE, PRICE, NO_OF_ROOMS,FEATURE,U_NAME,APP_NAME from APARTMENT JOIN USER_TABLE ON (APARTMENT.USER_ID = USER_TABLE.USER_ID) FULL JOIN ADDRESS ON (ADDRESS.APP_ADD_ID = APARTMENT.APP_ADD_ID) WHERE APARTMENT.USER_ID IN(select USER_ID from APARTMENT WHERE APP_TYPE='" + DropDownList1.SelectedItem.Text + "') AND APARTMENT.APP_ADD_ID IN(select APP_ADD_ID from APARTMENT WHERE APP_TYPE='" + DropDownList1.SelectedItem.Text + "')AND APP_TYPE= '" + DropDownList1.SelectedItem.Text + "' ", conn))
            {
                conn.Open();
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                //ListItem add = new ListItem("All","-1");
                //DropDownList1.Items.Insert(0,add);
            }
            //ListItem lisubcata = new ListItem("Select SubCatagories", "-1");
            //DropDownList1.Items.Insert(0, lisubcata);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            OracleConnection conn = new OracleConnection(CS);
            using (OracleCommand cmd = new OracleCommand("SELECT APP_TYPE, APP_SIZE, APP_DATE, PRICE, NO_OF_ROOMS,FEATURE,U_NAME,APP_NAME from APARTMENT JOIN USER_TABLE ON (APARTMENT.USER_ID = USER_TABLE.USER_ID) FULL JOIN ADDRESS ON (ADDRESS.APP_ADD_ID = APARTMENT.APP_ADD_ID) WHERE APARTMENT.USER_ID IN(select USER_ID from APARTMENT WHERE APP_SIZE BETWEEN '" + TextBox1.Text+ "' AND '"+TextBox2.Text+"' ) AND APARTMENT.APP_ADD_ID IN(select APP_ADD_ID from APARTMENT WHERE APP_SIZE BETWEEN '" + TextBox1.Text + "' AND '"+ TextBox2.Text+"')AND APP_SIZE BETWEEN '" + TextBox1.Text + "' AND '"+ TextBox2.Text+"' ", conn))
            {
                conn.Open();
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                //ListItem add = new ListItem("All","-1");
                //DropDownList1.Items.Insert(0,add);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string CS = ConfigurationManager.ConnectionStrings["oracle"].ConnectionString;
            OracleConnection conn = new OracleConnection(CS);
            using (OracleCommand cmd = new OracleCommand("SELECT APP_TYPE, APP_SIZE, APP_DATE, PRICE, NO_OF_ROOMS,FEATURE,U_NAME,APP_NAME from APARTMENT JOIN USER_TABLE ON (APARTMENT.USER_ID = USER_TABLE.USER_ID) FULL JOIN ADDRESS ON (ADDRESS.APP_ADD_ID = APARTMENT.APP_ADD_ID) WHERE APARTMENT.USER_ID IN(select USER_ID from APARTMENT WHERE PRICE BETWEEN '" + TextBox3.Text+ "' AND '"+TextBox4.Text+"' ) AND APARTMENT.APP_ADD_ID IN(select APP_ADD_ID from APARTMENT WHERE PRICE BETWEEN '" + TextBox3.Text + "' AND '"+ TextBox4.Text+"')AND PRICE BETWEEN '" + TextBox3.Text + "' AND '"+ TextBox4.Text+"' ", conn))
            {
                conn.Open();
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                //ListItem add = new ListItem("All","-1");
                //DropDownList1.Items.Insert(0,add);
            }
        

        }

        

    }
}