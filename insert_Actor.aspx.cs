using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Text;

public partial class insert_actor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        try
        {
            SqlConnection conn = new SqlConnection("Data Source=BILLYS-VAIO;Initial Catalog=askisi2;Integrated Security=True");
            conn.Open();
            SqlCommand insert_cmd2 = new SqlCommand("insert into Actor values('" + TextBox1.Text + "' ,'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", conn);
            insert_cmd2.ExecuteNonQuery();
            conn.Close();

        }
        catch
        {
            Response.Redirect("error pages/actor_error_page.aspx");
        }
        GridView1.DataBind();
        /*SqlConnection conn2 = new SqlConnection("Data Source=BILLYS-VAIO;Initial Catalog=askisi2;Integrated Security=True");
        conn2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from actor", conn2);
        SqlDataReader re2 = cmd3.ExecuteReader();
        conn2.Close();
        GridView1.DataBind();*/
    }



   
}