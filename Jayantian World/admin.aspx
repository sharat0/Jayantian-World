<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="Jayantian_World.test" %>

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
            background: url("img/personal_details/02.jpg");
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
        <span class="head">Student Details</span>

        <span class="label">Name:</span>
        <asp:Label ID="name" runat="server" class="data" />
        <br />

        <span class="label">DOB:</span>
        <asp:Label ID="dob" runat="server" class="data" />
        <br />

        <span class="label">Email:</span>
        <asp:Label ID="email" runat="server" class="data" />
        <br />

        <span class="label">Phone:</span>
        <asp:Label ID="phone" runat="server" class="data" />
        <br />

        <span class="label">Application Status:</span>
        <asp:Label ID="status" runat="server" class="data" />
        <br />


        <!-- COURSE DETAILS -->

        <span class="head">Course Details</span>

        <span class="label">Course Category:</span>
        <asp:Label ID="category" runat="server" class="data" />
        <br />

        <span class="label">Course:</span>
        <asp:Label ID="course" runat="server" class="data" />
        <br />

        <span class="label">Department:</span>
        <asp:Label ID="dept" runat="server" class="data" />
        <br />

        <span class="label">Additional Language:</span>
        <asp:Label ID="add_lang" runat="server" class="data" />
        <br />


        <!-- Personal Details -->

        <span class="label">Birth Town:</span>
        <asp:Label ID="brt" runat="server" class="data" />
        <br />

        <span class="label">Birth State:</span>
        <asp:Label ID="brs" runat="server" class="data" />
        <br />

        <span class="label">Permanent Address:</span>
        <asp:Label ID="per_add" runat="server" class="data" />
        <br />

        <span class="label">Current Address:</span>
        <asp:Label ID="curr_add" runat="server" class="data" />
        <br />

        <span class="label">Languages Known:</span>
        <asp:Label ID="lang1" runat="server" class="data" />
        <br />
        <asp:Label ID="lang2" runat="server" class="data" />
        <br />
        <asp:Label ID="lang3" runat="server" class="data" />
        <br />
        <asp:Label ID="lang4" runat="server" class="data" />
        <br />
        <asp:Label ID="lang5" runat="server" class="data" />
        <br />


        <!-- EDUCATIONAL DETAILS -->
        <span class="head">Educational Details</span>

        <!-- 10th DETAILS -->

        <span class="head2">10th Details</span>

        <span class="label">Total Marks Scored: </span>
        <asp:Label ID="total" runat="server" class="data" />
        <br />

        <span class="label">Maximum Marks: </span>
        <asp:Label ID="max" runat="server" class="data" />
        <br />

        <span class="label">Percentage: </span>
        <asp:Label ID="per" runat="server" class="data" />
        <br />

        <span class="label">Year of Passing: </span>
        <asp:Label ID="pass_year" runat="server" class="data" />
        <br />

        <span class="label">Board: </span>
        <asp:Label ID="board_10" runat="server" class="data" />
        <br />

        <span class="label">State: </span>
        <asp:Label ID="state_10" runat="server" class="data" />
        <br />

        <!-- 12TH DETAILS -->

        <span class="head2">12th Details</span>
        <span class="label">Board: </span>
        <asp:Label ID="board_12" runat="server" class="data" />
        <br />

        <span class="label">State: </span>
        <asp:Label ID="state_12" runat="server" class="data" />
        <br />

        <span class="label">Institute: </span>
        <asp:Label ID="inst" runat="server" class="data" />
        <br />

        <span class="label">Medium: </span>
        <asp:Label ID="medium" runat="server" class="data" />
        <br />

        <span class="label">Passing Year: </span>
        <asp:Label ID="pass_yr" runat="server" class="data" />
        <br />

        <span class="label">Registration Number: </span>
        <asp:Label ID="reg_no" runat="server" class="data" />
        <br />

        <table>
            <tr>
                <th>Subject</th>
                <th>Marks Scored</th>
                <th>Total Marks</th>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub1" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="mo1" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="tm1" runat="server" class="data tbl_dta" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub2" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="mo2" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="tm2" runat="server" class="data tbl_dta" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub3" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="mo3" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="tm3" runat="server" class="data tbl_dta" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub4" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="mo4" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="tm4" runat="server" class="data tbl_dta" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub5" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="mo5" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="tm5" runat="server" class="data tbl_dta" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub6" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="mo6" runat="server" class="data tbl_dta" /></td>
                <td>
                    <asp:Label ID="tm6" runat="server" class="data tbl_dta" /></td>
            </tr>

        </table>

        <span class="label">Total Marks: </span>
        <asp:Label ID="tm" runat="server" class="data" />
        <br />

        <span class="label">Maximum Marks: </span>
        <asp:Label ID="mm" runat="server" class="data" />
        <br />

        <span class="label">Percentage: </span>
        <asp:Label ID="per12" runat="server" class="data" />
        <br />
        <asp:Button ID="add" runat="server" Text="Reject" ToolTip="add"></asp:Button>
        <asp:Button ID="rem" runat="server" Text="Approve" ToolTip="Remove"></asp:Button>
    </form>
    </div>
</body>

</html>
