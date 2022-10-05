<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="add_rem.aspx.vb" Inherits="Jayantian_World.add_rem" %>

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
        }


        .head {
            font-family: 'Open Sans', sans-serif;
            font-size: 34px;
            display: block;
            /* text-align: center; */
            margin-left: 8%;
            text-decoration: underline;
            margin-bottom: 5%;
            /* padding: 20px 0; */
        }

        #main {
            width: 100%;
            height: 100vh;
            background: url(/img/change_pass//cp_bg.jpg) no-repeat center;
            background-size: cover;
        }

        form {
            background-color: rgba(255, 255, 255, .8);
            height: 85%;
            width: 60%;
            margin-left: 20%;
            padding-left: 15%;
            padding-top: 20px;
            margin-top: 2%; 
        }

        .label {
            display: block;
            font-size: 18px;
            font-family: 'Hind', sans-serif;
        }

        input {
            display: block;
            margin-bottom: 20px;
            width: 60%;
            height: 30px;
        }

        #id {
            display: inline-block;
        }

        #fetch {
            width: 30px;
            height: 30px;
            color: #fff;
            background-color: rgb(26, 11, 243);
            border: 0;
            cursor: pointer;
        }

        #add {
            display: inline-block;
            height: 45px;
            width: 22%;
            font-size: 17px;
            margin-left: 5%;
            margin-top: 20px;
            background-color: rgb(49, 99, 236);
            outline: none;
            border: 0;
            cursor: pointer;
            color: #fff;
            transition: all .1s ease-in-out;
        }

            #add:hover {
                background-color: rgb(21, 67, 194);
            }

        #rem {
            display: inline-block;
            height: 50px;
            width: 22%;
            font-size: 17px;
            margin-left: 2%;
            margin-top: 20px;
            background-color: rgb(236, 49, 49);
            outline: none;
            border: 0;
            cursor: pointer;
            color: #fff;
            transition: all .1s ease-in-out;
        }

            #rem:hover {
                background-color: rgb(243, 22, 22);
            }
    </style>

    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/6d20788c52.js" crossorigin="anonymous"></script>

    <title>Add Admin</title>
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
            <span class="head">Add/ Remove Admin</span>

            <span class="label">Id</span>
            <input type="text" name="id" id="id" placeholder="ID for new admin" />

            <span class="label">Username</span>
            <asp:TextBox ID="uname" runat="server" name="uname" placeholder="Admin Username" />

            <span class="label">Password</span>
            <input type="text" name="pass" id="pass" placeholder="Password (Only for New Admin)">

            <span class="label">Confirm Password</span>
            <input type="text" name="cpass" id="cpass" placeholder="Confirm Password (New Admin)">

            <span class="label">Branch: </span>
            <asp:DropDownList ID="branch" runat="server" required>
                <asp:ListItem Value="law" Text="Law" />
                <asp:ListItem Value="humanities" Text="Humanities" />
                <asp:ListItem Value="cs" Text="Computer Science" />
                <asp:ListItem Value="science" Text="Science" />
                <asp:ListItem Value="ls" Text="Life Science" />
            </asp:DropDownList>
            <br />

            <asp:Button ID="rem" runat="server" Text="Remove" ToolTip="Remove"></asp:Button>
            <asp:Button ID="add" runat="server" Text="Add" ToolTip="add" />

        </form>
    </div>
</body>
</html>
