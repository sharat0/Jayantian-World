<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="accepted.aspx.vb" Inherits="Jayantian_World.approved" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/admin.css">

    <title>Admin | Home</title>
</head>
<body>
    <div class="navbar">
        <a href="admin.aspx">Home</a>
        <a href="student_list.aspx">Student List</a>
        <a href="add_rem.aspx">Add/ Remove</a>
        <a href="#news">Forum</a>
        <div class="dropdown">
            <button class="dropbtn">
                Settings
      <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="change_password.aspx">Change Password</a>
                <a href="logout.aspx">LogOut</a>
            </div>
        </div>
    </div>

    <form id="form1" runat="server">
        <span id="rejected" class="btn"><a href="rejected.aspx">Rejected List</a></span>
        <span id="pending" class="btn"><a href="pending.aspx">Pending List</a></span>
        <span id="approved" class="btn"><a href="accepted.aspx">Approved List</a></span>

        <asp:PlaceHolder ID="PlaceHolder1" runat="server" />

    </form>
</body>
</html>
