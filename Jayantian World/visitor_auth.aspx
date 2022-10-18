<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="visitor_auth.aspx.vb" Inherits="Jayantian_World.visitor_auth" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/adm_nav.css" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Hind', sans-serif;
        }

        body {
            background: url("img/personal_details/2.jpg");
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center;
        }

        .head {
            font-family: 'Open Sans', sans-serif;
            font-size: 34px;
            display: block;
            /* text-align: center; */
            margin-left: 25%;
            text-decoration: underline;
            padding: 20px 0;
        }

        .head2 {
            display: block;
            font-size: 24px;
            font-family: 'Open Sans', sans-serif;
            margin-bottom: 25px;
            text-decoration: underline 2px solid #000;
        }

        .label {
            font-size: 18px;
            display: inline-block;
            text-align: right;
        }

        .data, .tbl_dta {
            display: inline-block;
            width: 40%;
            margin-bottom: 10px;
            height: 30px;
            background-color: #fff;
        }

        .tbl_dta {
            width: 60%;
        }

        form {
            background-color: rgba(255,255,255,.8);
            padding-left: 10%;
            width: 70%;
            margin-left: 15%;
            padding-top: 20px;
            padding-bottom: 40px;
            border-radius: 5px;
        }

        table {
            width: 80%;
            margin-top: 15px;
            margin-bottom: 20px;
        }

        table, tr {
            border: 2px solid #000;
        }

            table input {
                width: 100%;
                margin-top: 5px;
            }

        #add {
            display: inline-block;
            height: 45px;
            width: 22%;
            font-size: 17px;
            margin-left: 5%;
            margin-top: 20px;
            background-color: rgb(236, 49, 49);
            outline: none;
            border: 0;
            cursor: pointer;
            color: #fff;
            transition: all .1s ease-in-out;
        }

            #add:hover {
                background-color: rgb(243, 22, 22);
                border: 2px solid #fff;
            }

        #rem {
            display: inline-block;
            height: 50px;
            width: 22%;
            font-size: 17px;
            margin-left: 20%;
            margin-top: 20px;
            background-color: rgb(49, 99, 236);
            outline: none;
            border: 0;
            cursor: pointer;
            color: #fff;
            transition: all .1s ease-in-out;
        }

            #rem:hover {
                background-color: rgb(21, 67, 194);
                border: 2px solid #fff;
            }
    </style>

    <title>Admin | Home</title>
</head>
<body>
    <div class="navbar">
        <a href="admin.aspx">Home</a>
        <a href="visitor_auth.aspx">Visitors</a>
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
        <!-- STUDENT DETAILS -->
        <span class="head">Visitor's Details</span>

        <span class="label">Name:</span>
        <asp:Label ID="name" runat="server" class="data" />
        <br />


        <span class="label">Email:</span>
        <asp:Label ID="email" runat="server" class="data" />
        <br />

        <span class="label">Phone:</span>
        <asp:Label ID="phone" runat="server" class="data" />
        <br />

        <span class="label">Purpose:</span>
        <asp:Label ID="purpose" runat="server" class="data" />
        <br />


        
        <br />
        <asp:Button ID="add" runat="server" Text="Reject" ToolTip="add"></asp:Button>
        <asp:Button ID="rem" runat="server" Text="Approve" ToolTip="Remove"></asp:Button>
    </form>
</body>

</html>