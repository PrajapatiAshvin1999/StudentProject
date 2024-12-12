<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login</h1>
        <table border="1">
            <tr>
                
                    <td class="auto-style1"> <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label></td>
                 <td class="auto-style1"> <asp:TextBox ID="txtEmail" runat="server" style="width: 168px"></asp:TextBox></td>    
                
            </tr> 
             <tr>
                
                 <td class="auto-style1"> <asp:Label ID="lbPass" runat="server" Text="Password"></asp:Label></td>
                 <td> <asp:TextBox ID="txtPass" runat="server" style="width: 168px"></asp:TextBox></td>    
                
            </tr>
            <tr>
                <td>  <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
