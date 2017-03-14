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

public partial class insert_movie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { }
    
    protected void insert_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection("Data Source=BILLYS-VAIO;Initial Catalog=askisi2;Integrated Security=True");
            conn.Open();
            SqlCommand insert_cmd = new SqlCommand("insert into movie values ('" + TextBox1.Text + "' ,'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", conn);
            insert_cmd.ExecuteNonQuery();
            conn.Close();
        }

        catch(Exception)
        {
            Response.Redirect("error pages/movie_error_page.aspx");
        }

        SqlConnection conn2 = new SqlConnection("Data Source=BILLYS-VAIO;Initial Catalog=askisi2;Integrated Security=True");
        conn2.Open();
        SqlCommand cmd2 = new SqlCommand("select * from movie", conn2);
        SqlDataReader re = cmd2.ExecuteReader();
        conn2.Close();
        GridView1.DataBind();


    }

    
}
