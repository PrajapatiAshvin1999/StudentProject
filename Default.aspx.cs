using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\91955\Documents\Visual Studio 2012\WebSites\WebSite9\App_Data\Database.mdf;Integrated Security=True");
        
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        con.Open();
      //  string str = "insert into student values('" + txtFName.Text+ "', '" + txtLname.Text+  "','"+ txtCity.Text+ "','"+txtEmail.Text +"', '"+ txtPass.Text +"' )";
        SqlCommand cmd = new SqlCommand();

        cmd.Parameters.AddWithValue("@txtFName", txtFName.Text);
        cmd.Parameters.AddWithValue("@txtLName", txtLname.Text);
        cmd.Parameters.AddWithValue("@txtCity", txtCity.Text);
        cmd.Parameters.AddWithValue("@txtEmail", txtEmail.Text);
        cmd.Parameters.AddWithValue("@txtPass", txtPass.Text);

        cmd.CommandText = "insert into student values(@txtFName,@txtLName,@txtCity,@txtEmail,@txtPass)";
        cmd.Connection = con;

        Console.WriteLine(txtFName);

        cmd.ExecuteNonQuery();
        lblmsg.Text = "Record Inserted Successfully....";
        con.Close();
       
    }
    
   
}