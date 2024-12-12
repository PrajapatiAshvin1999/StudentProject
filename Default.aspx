<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 153px;
        }
        .auto-style2 {
            width: 334px;
        }
        
    </style>
</head>
<body style="height: 444px; width: 284px";>
    <form id="form1" runat="server">
        <table border="">
            <h2>Student Registration </h2>
            <tr>
                <td class="auto-style1"> <asp:Label ID="lbFName" runat="server" Text="FristName"></asp:Label></td> &nbsp;
                <td class="auto-style2"> <asp:TextBox ID="txtFName" runat="server" Width="174px"></asp:TextBox></td>        
            </tr>
            <tr>
                <td class="auto-style1"> <asp:Label ID="lbLname" runat="server" Text="LastName"></asp:Label></td>
                <td class="auto-style2"> <asp:TextBox ID="txtLname" runat="server" Width="173px"></asp:TextBox></td>        
            </tr>
           
            <tr>
                <td class="auto-style1"> <asp:Label ID="lbcity" runat="server" Text="City"></asp:Label></td>
                <td class="auto-style2"> <asp:TextBox ID="txtCity" runat="server" Width="174px"></asp:TextBox></td>        
            </tr>
            <tr>
                <td class="auto-style1"> <asp:Label ID="lbemail" runat="server" Text="Email-Id"></asp:Label></td>
                <td class="auto-style2"> <asp:TextBox ID="txtEmail" runat="server" Width="173px"></asp:TextBox></td>        
            </tr>
            <tr>
                <td class="auto-style1"> <asp:Label ID="lbpass" runat="server" Text="Password"></asp:Label></td>
                <td class="auto-style2"> <asp:TextBox ID="txtPass" runat="server" Width="174px"></asp:TextBox></td>        
            </tr>
            <tr>
                <td><asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" style="height: 29px" /> </td>
                <td class="auto-style2"><a href="Default2.aspx">Login</a></td>
            </tr>
        </table>
        <p> <asp:Label ID="lblmsg" runat="server" style="color:blue"></asp:Label></p>
        
    </form>
    
</body>
</html>
