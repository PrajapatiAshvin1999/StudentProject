using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\91955\Documents\Visual Studio 2012\WebSites\WebSite9\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("Default2.aspx");
        }
        else {
            Response.Write(Session["status"]);
            
            DataSet ds = new DataSet();
            string qurey = "select * from student where email='"+Session["email"]+"'";
            SqlDataAdapter sda = new SqlDataAdapter(qurey,con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
    }


    protected void update_Click(object sender, EventArgs e)
    {
        Response.Redirect("updateUser.aspx");
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        Response.Redirect("deleteUser.aspx");
    }
}