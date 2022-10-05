<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Jayantian_World.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="css/login.css" />

    <title>Login</title>
</head>
<body>

    <div id="main">
        <div id="left">
            <span class="left_head">Welcome to Jayantian World</span>
            <p>
                This is a place for all Jayantian students as well as faculty.
                <br />
                A single place for everything from admission to chat forums, doubts, notices.
                <br />
            </p>
            <span class="join"><a href="form1.aspx" target="_blank" rel="noopener noreferrer">Still not filled
                    admission form? Fill here</a></span>
        </div>
        <div id="right">
            <span class="head">Login</span>
            <form id="login" runat="server">
                <span class="label">Id</span>
                <br />
                <input type="text" name="id" id="id" placeholder="ID" />

                <span class="label">Password</span>
                <br />
                <input type="password" name="pass" id="pass" placeholder="Password" />

                <asp:Button ID="submit" class="btn" runat="server" Text="LogIn" ToolTip="Submit" />
            </form>
        </div>
    </div>
</body>
</html>
