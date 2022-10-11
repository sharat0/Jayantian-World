<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="accepted.aspx.vb" Inherits="Jayantian_World.approved" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/adm_nav.css">

    <!-- GOOGLE FONTS CDN -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="css/adm_nav.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        #head {
            display: block;
            text-align: center;
            font-family: 'Open Sans', sans-serif;
            font-size: 36px;
            padding: 10px 0;
        }

        #form1 {
            padding-top: 3%;
        }

        body {
            background-color: #f7f9ff;
        }

        .btn {
            width: 10%;
            height: 25px;
            border-radius: 5px;
            font-size: 17px;
            margin-left: 5%;
            background-color: rgb(130, 164, 255);
            outline: none;
            border: 0;
            cursor: pointer;
            color: #fff;
            transition: all .1s ease-in-out;
            padding: 10px 20px;
            box-shadow: 1px 1px 5px #000;
        }

            .btn:hover {
                background-color: rgb(49, 99, 236);
            }

            .btn a {
                text-decoration: none;
                color: #fff;
                text-shadow: 0px 0px 2px #000;
            }

        #rejected {
            margin-left: 30%;
        }

        #pending {
            background-color: rgb(49, 99, 236);
        }

        #table-data {
            margin-top: 40px;
            margin-left: 10%;
            width: 80%;
            height: 100%;
            border-collapse: collapse;
            text-align: center;
        }
    </style>


    <title>Approved Applicants</title>
</head>
<body>
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
        <div>

            <span id="rejected" class="btn"><a href="rejected.aspx">Rejected List</a></span>
            <span id="pending" class="btn"><a href="pending.aspx">Pending List</a></span>
            <span id="approved" class="btn"><a href="accepted.aspx">Approved List</a></span>

            <span id="head">Approved Applicants List</span>


            <asp:PlaceHolder ID="PlaceHolder1" runat="server" />

        </div>
    </form>
</body>
</html>
