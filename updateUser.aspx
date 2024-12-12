<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateUser.aspx.cs" Inherits="updateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h1>Update User...</h1>
        <table>
            
            <tr>
                <td>  <asp:Label ID="lbNEmail" runat="server" Text="New Email-Id"></asp:Label></td>
                <td><asp:TextBox ID="txtNEmail" runat="server"></asp:TextBox></td>
            </tr>

              
            <tr>
                <td>  <asp:Label ID="lbNPass" runat="server" Text="New Password"></asp:Label></td>
                <td><asp:TextBox ID="txtNPass" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td> <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" /></td>
                 <td> <asp:Button ID="back" runat="server" Text="Back" OnClick="back_Click" /></td>
            </tr>
        </table>

        <asp:Label ID="lblmsg" runat="server" ></asp:Label>

    </div>
    </form>
</body>
</html>
