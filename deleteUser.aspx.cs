using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class deleteUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\91955\Documents\Visual Studio 2012\WebSites\WebSite9\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void delete_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text;
        string pass = txtPass.Text;


        con.Open();
        string query = "delete from student where email='"+email+"'and password='"+pass+"'";
        SqlCommand cmd = new SqlCommand(query,con);
        cmd.ExecuteNonQuery();
        lblmsg.Text = "User Deleted...";
        Response.Redirect("Default2.aspx");
        con.Close();
    }
}