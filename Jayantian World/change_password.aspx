<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="change_password.aspx.vb" Inherits="Jayantian_World.chage_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/change_pass.css">
    <link rel="stylesheet" href="css/adm_nav.css" />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
    <title>Change Password</title>
</head>
<body>

    <div id="main">
        <div class="navbar">
            <a href="admin.aspx">Home</a>
            <a href="student_list.aspx">Student List</a>
            <a href="add_rem.aspx">Add/ Remove</a>
            <a href="forum.aspx">Forum</a>
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
            <span class="head">Change Password</span>
            <span class="lable">Current Password</span>
            <input type="password" placeholder="*********" name="cpass" id="cpass">

            <span class="lable">New Password</span>
            <input type="password" placeholder="*********" name="npass" id="npass">

            <span class="lable">Confirm New Password</span>
            <input type="password" placeholder="*********" name="cnpass" id="cnpass">

            <asp:Button ID="change" runat="server" Text="Change" ToolTip="Submit" />
        </form>
    </div>
</body>
</html>
