using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Bank_Demonstration
{
    public partial class Add_Country : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void bthAddCountry_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tbl_country values('" + tbCountryCode.Text + "', '" + tbCountry.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                tbCountryCode.Text = string.Empty;
                tbCountry.Text = string.Empty;
            }
        }   
    }
}