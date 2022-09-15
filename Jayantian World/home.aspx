<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="Jayantian_World.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- GOOGLE FONTS -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="css/home.css" />

        <title>Home</title>
    </head>
<body>
        <div id="main">



            <form id="form1" runat="server">
                <!-- STUDENT DETAILS -->
                <span class="head">Student Details</span>

                <span class="label">Name</span>
                <asp:Label ID="name" runat="server" class="data"/>
                <br />

                <span class="label">DOB</span>
                <asp:Label ID="dob" runat="server"  class="data"/>
                <br />

                <span class="label">Email</span>
                <asp:Label ID="email" runat="server"  class="data"/>
                <br />

                <span class="label">Phone</span>
                <asp:Label ID="phone" runat="server"  class="data" />
                <br />

                <span class="label">Application Status</span>
                <asp:Label ID="status" runat="server"  class="data" />
                <br />


                <!-- COURSE DETAILS -->

                <span class="head">Course Details</span>

                <span class="label">Course Category</span>
                <asp:Label ID="category" runat="server"  class="data"/>
                <br />

                <span class="label">Course</span>
                <asp:Label ID="course" runat="server"  class="data"/>
                <br />

                <span class="label">Department</span>
                <asp:Label ID="dept" runat="server"  class="data"/>
                <br />

                <span class="label">Additional Language</span>
                <asp:Label ID="add_lang" runat="server"  class="data"/>
                <br />


                <!-- Personal Details -->

                <span class="label">Birth Town:</span>
                <asp:Label ID="brt" runat="server"  class="data"/>
                <br />

                <span class="label">Birth State:</span>
                <asp:Label ID="brs" runat="server"  class="data"/>
                <br />

                <span class="label">Permanent Address:</span>
                <asp:Label ID="per_add" runat="server"  class="data"/>
                <br />

                <span class="label">Current Address:</span>
                <asp:Label ID="curr_add" runat="server"  class="data"/>
                <br />

                <span class="label">Languages Known:</span>
                <asp:Label ID="lang1" runat="server"  class="data"/>
                <br />
                <asp:Label ID="lang2" runat="server"  class="data"/>
                <br />
                <asp:Label ID="lang3" runat="server"  class="data"/>
                <br />
                <asp:Label ID="lang4" runat="server"  class="data"/>
                <br />
                <asp:Label ID="lang5" runat="server"  class="data"/>
                <br />


                <!-- EDUCATIONAL DETAILS -->
                <span class="head">Educational Details</span>

                <!-- 10th DETAILS -->

                <span class="head2">10th Details</span>

                <span class="label">Total Marks Scored: </span>
                <asp:Label ID="total" runat="server"  class="data"/>
                <br />

                <span class="label">Maximum Marks: </span>
                <asp:Label ID="max" runat="server"  class="data"/>
                <br />

                <span class="label">Percentage: </span>
                <asp:Label ID="per" runat="server"  class="data"/>
                <br />

                <span class="label">Year of Passing: </span>
                <asp:Label ID="pass_year" runat="server"  class="data"/>
                <br />

                <span class="label">Board: </span>
                <asp:Label ID="board_10" runat="server"  class="data"/>
                <br />

                <span class="label">State: </span>
                <asp:Label ID="state_10" runat="server"  class="data"/>
                <br />

                <!-- 12TH DETAILS -->

                <span class="head2">12th Details</span>
                <span class="label">Board: </span>
                <asp:Label ID="board_12" runat="server"  class="data"/>
                <br />

                <span class="label">State: </span>
                <asp:Label ID="state_12" runat="server"  class="data" />
                <br />

                <span class="label">Institute: </span>
                <asp:Label ID="inst" runat="server"  class="data" />
                <br />

                <span class="label">Medium: </span>
                <asp:Label ID="medium" runat="server"  class="data" />
                <br />

                <span class="label">Passing Year: </span>
                <asp:Label ID="pass_yr" runat="server"  class="data" />
                <br />

                <span class="label">Registration Number: </span>
                <asp:Label ID="reg_no" runat="server"  class="data" />
                <br />

                <table>
                    <tr>
                        <th>Subject</th>
                        <th>Marks Scored</th>
                        <th>Total Marks</th>
                    </tr>
                    <tr>
                        <td><asp:Label ID="sub1" runat="server"  class="data" /></td>
                        <td><asp:Label ID="mo1" runat="server"  class="data"/></td>
                        <td><asp:Label ID="tm1" runat="server"  class="data"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="sub2" runat="server"  class="data"/></td>
                        <td><asp:Label ID="mo2" runat="server"  class="data"/></td>
                        <td><asp:Label ID="tm2" runat="server" class="data" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="sub3" runat="server" class="data" /></td>
                        <td><asp:Label ID="mo3" runat="server" class="data" /></td>
                        <td><asp:Label ID="tm3" runat="server" class="data" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="sub4" runat="server" class="data" /></td>
                        <td><asp:Label ID="mo4" runat="server"  class="data"/></td>
                        <td><asp:Label ID="tm4" runat="server" class="data" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="sub5" runat="server"  class="data"/></td>
                        <td><asp:Label ID="mo5" runat="server" class="data" /></td>
                        <td><asp:Label ID="tm5" runat="server" class="data" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="sub6" runat="server" class="data" /></td>
                        <td><asp:Label ID="mo6" runat="server" class="data" /></td>
                        <td><asp:Label ID="tm6" runat="server" class="data" /></td>
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
            </form>
        </div>
    </body>

    </html>