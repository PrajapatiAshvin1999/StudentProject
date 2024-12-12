<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteUser.aspx.cs" Inherits="deleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h1>Delete Student</h1>
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
                <td>  <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="delete_Click" /></td>
            </tr>
        </table>
        <asp:Label ID="lblmsg" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
