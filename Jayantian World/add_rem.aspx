<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="add_rem.aspx.vb" Inherits="Jayantian_World.add_rem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/add-rem.css">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/6d20788c52.js" crossorigin="anonymous"></script>

    <title>Add Admin</title>
</head>
<body>
    <div id="main">
        <form id="form1" runat="server">
           <span class="head">Add/ Remove Admin</span>
            <%--<span class="label">Id</span>
            <input type="text" name="id" id="id" placeholder="Only if removing admin">
            <%--<button type="submit" id="fetch"><i class="fa-solid fa-magnifying-glass"></i></button>
            <asp:Button ID="fetch" runat="server" Text="Find" ToolTip="Find"></asp:Button>--%>
            
            <span class="label">Username</span>
            <asp:TextBox ID = "uname" runat = "server" name="uname" placeholder="Admin Username"/>
            
            <span class="label">Password</span>
            <input type="text" name="pass" id="pass" placeholder="Password (Only for New Admin)">
            
            <span class="label">Confirm Password</span>
            <input type="text" name="cpass" id="cpass" placeholder="Confirm Password (New Admin)">

            <span class="label">Branch: </span>
            <asp:DropDownList ID="branch" runat="server" required>
                <asp:ListItem Value="law" Text="Law"/>
                <asp:ListItem Value="humanities" Text="Humanities" />
                <asp:ListItem Value="cs" Text="Computer Science" />
                <asp:ListItem Value="science" Text="Science" />
                <asp:ListItem Value="ls" Text="Life Science" />
            </asp:DropDownList>  
            <br/>

            <asp:Button ID="rem" runat="server" Text="Remove" ToolTip="Remove"></asp:Button>
            <asp:Button ID="add" runat="server" Text="Add" ToolTip="add" />

        </form>
    </div>
</body>
</html>
