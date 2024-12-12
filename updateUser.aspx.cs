using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class updateUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\91955\Documents\Visual Studio 2012\WebSites\WebSite9\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        string nEmail = txtNEmail.Text;
        string nPass = txtNPass.Text;

        con.Open();

        string qry = "update student set email='" + nEmail + "', password='" + nPass + "'where email='" + Session["email"] + "'";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Record Updated Successfully....";
        con.Close();
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginUser.aspx");
    }
}