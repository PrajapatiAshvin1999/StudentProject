using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\91955\Documents\Visual Studio 2012\WebSites\WebSite9\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      

        string email = txtEmail.Text;
        string pass = txtPass.Text;
        
       

        con.Open();
       
        string qry = "select * from student where email='"+email +"' AND password='"+pass+"'";
        SqlCommand cmd = new SqlCommand(qry,con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Session["email"] = txtEmail.Text;
            Response.Redirect("LoginUser.aspx");
           

        }
        else
        {
            Label1.Text = "Email ID and Password Incorrect... ";
            
        }

        con.Close();

        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}