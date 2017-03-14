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


public partial class show_participations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=BILLYS-VAIO;Initial Catalog=askisi2;Integrated Security=True");
        conn.Open();
        SqlCommand insert_cmd = new SqlCommand("insert into participation (Movie_ID,Actor_ID) values ('"+TextBox1.Text+"','"+TextBox2.Text+"')",conn);
        insert_cmd.ExecuteNonQuery();



        SqlCommand cmd2 = new SqlCommand("select * from participation", conn);
        SqlDataReader re = cmd2.ExecuteReader();
        conn.Close();
        GridView1.DataBind();
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}