<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginUser.aspx.cs" Inherits="LoginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Welcome to User...</h1>

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LogOut" />

        <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
        <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
        
    </form>
</body>
</html>
