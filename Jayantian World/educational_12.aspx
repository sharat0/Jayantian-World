<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="educational_12.aspx.vb" Inherits="Jayantian_World.educational_12" %>

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

    <style>
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Hind', sans-serif;
}

#main{
    padding-top: 7%;
    padding-bottom: 50px;
    /* height: 100%; */
    background: url('../img/personal_details/2.jpg') no-repeat center;
    background-size: cover;

}

.head{
    font-family: 'Open Sans', sans-serif;
    font-size: 34px;
    display: block;
    /* text-align: center; */
    margin-left: 11%;
    text-decoration: underline;
    padding: 20px 0;
}

.head2{
    display: block;
    font-size: 24px;
    font-family: 'Open Sans', sans-serif;
    margin-bottom: 25px;
    text-decoration: underline 2px solid #000;
    margin-left: 10%;
}

.label{
    font-size: 18px;
    display: inline-block;
    text-align: right;
}

input{
    /* display: block; */
    width: 40%;
    margin-bottom: 10px;
    height: 30px;
    /* margin-left: 25px; */
}

form{
    background-color: rgba(255,255,255,.5);
    padding-left: 20%;
    width: 70%;
    margin-left: 15%;
    padding-bottom: 20px;
    border-radius: 5px;
    box-shadow: 2px 2px 10px #000;
}

#board{
    width: 40%;
    margin-bottom: 10px;
    height: 30px;
    margin-left: 125px;
}

#state{
    margin-left: 130px;
}
#institution{
    margin-left: 20px;

}


#pass_year{
    margin-left: 45px;
}

#reg_no{
    margin-left: 12px;
}

#max_marks{
    margin-left: 20px;
}

#percentage{
    margin-left: 60px;
}




table{
    width: 80%;
    margin-top: 15px;
    margin-bottom: 20px;
}

table,tr{
    border: 2px solid #000;
}

table input{
    width: 100%;
    margin-top: 5px;
}

#btn{
    margin-top: 25px;
    margin-left: 19%;
    display: inline-block;
    outline: 0;
    border: 0;
    cursor: pointer;
    will-change: box-shadow,transform;
    background: radial-gradient( 100% 100% at 100% 0%, #89E5FF 0%, #5468FF 100% );
    box-shadow: 0px 2px 4px rgb(45 35 66 / 40%), 0px 7px 13px -3px rgb(45 35 66 / 30%), inset 0px -3px 0px rgb(58 65 111 / 50%);
    padding: 0 32px;
    border-radius: 6px;
    color: #fff;
    height: 48px;
    font-size: 18px;
    text-shadow: 0 1px 0 rgb(0 0 0 / 40%);
    transition: box-shadow 0.15s ease,transform 0.15s ease;
    border: .5px solid #fff;
}

#btn:hover {
    box-shadow: 0px 4px 8px rgb(45 35 66 / 40%), 0px 7px 13px -3px rgb(45 35 66 / 30%), inset 0px -3px 0px #3c4fe0;
    transform: translateY(-2px);
}

#btn:active{
    box-shadow: inset 0px 3px 7px #3c4fe0;
    transform: translateY(2px);
}

    </style>

    <title>Personal Details</title>
</head>
<body>
    <div id="main">


        <!-- EDUCATIONAL DETAILS -->
        <form id="educational" runat="server">
            <span class="head">Educational Details</span>

            <!-- 12th DETAILS -->
            <span class="head2">12th Standard Exam Details</span>

            <span class="label">Board: </span>
            <asp:DropDownList ID="board" runat="server" required>

                <asp:ListItem Value="ICSE">ICSE</asp:ListItem>
                <asp:ListItem Value="CBSE">CBSE</asp:ListItem>
                <asp:ListItem Value="State Board">State Board</asp:ListItem>
            </asp:DropDownList>
            <br />

            <span class="label">State: </span>
            <input type="text" name="state" id="state" required />
            <br />

            <span class="label">Name of Institution: </span>
            <input type="text" name="institution" id="institution" required />
            <br />

            <span class="label">Medium of Instruction: </span>
            <input type="text" name="medium" id="medium" required />
            <br />

            <span class="label">Year of Passing: </span>
            <input type="text" name="pass_year" id="pass_year" required />
            <br />

            <span class="label">Registration Number</span>
            <input type="text" name="reg_no" id="reg_no" required />
            <br />

            <table>
                <tr>
                    <th>Suject</th>
                    <th>Marks Scored</th>
                    <th>Total Marks</th>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="subj1" runat="server" required>
                            <asp:ListItem Value="physics" Text="Physics" />
                            <asp:ListItem Value="chemistry" Text="Chemistry" />
                            <asp:ListItem Value="maths" Text="Maths" />
                            <asp:ListItem Value="biology" Text="Biology" />
                            <asp:ListItem Value="hindi" Text="Hindi" />
                            <asp:ListItem Value="english" Text="English" />
                            <asp:ListItem Value="accountancy" Text="Accountancy" />
                            <asp:ListItem Value="business" Text="Business Studies" />
                            <asp:ListItem Value="economics" Text="Economics" />
                            <asp:ListItem Value="cs" Text="Computer Science" />
                            <asp:ListItem Value="phe" Text="Physical Education" />
                        </asp:DropDownList>
                    </td>
                    <td>
                        <input type="text" name="ms1" id="ms1" required /></td>
                    <td>
                        <input type="text" name="tm1" id="tm1" required /></td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="subj2" runat="server" required>
                            <asp:ListItem Value="chemistry" Text="Chemistry" />
                            <asp:ListItem Value="physics" Text="Physics" />
                            <asp:ListItem Value="maths" Text="Maths" />
                            <asp:ListItem Value="biology" Text="Biology" />
                            <asp:ListItem Value="hindi" Text="Hindi" />
                            <asp:ListItem Value="english" Text="English" />
                            <asp:ListItem Value="accountancy" Text="Accountancy" />
                            <asp:ListItem Value="business" Text="Business Studies" />
                            <asp:ListItem Value="economics" Text="Economics" />
                            <asp:ListItem Value="cs" Text="Computer Science" />
                            <asp:ListItem Value="phe" Text="Physical Education" />
                        </asp:DropDownList>

                    </td>
                    <td>
                        <input type="text" name="ms2" id="ms2" required /></td>
                    <td>
                        <input type="text" name="tm2" id="tm2" required /></td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="subj3" runat="server" required>
                            <asp:ListItem Value="maths" Text="Maths" />
                            <asp:ListItem Value="physics" Text="Physics" />
                            <asp:ListItem Value="chemistry" Text="Chemistry" />
                            <asp:ListItem Value="biology" Text="Biology" />
                            <asp:ListItem Value="hindi" Text="Hindi" />
                            <asp:ListItem Value="english" Text="English" />
                            <asp:ListItem Value="accountancy" Text="Accountancy" />
                            <asp:ListItem Value="business" Text="Business Studies" />
                            <asp:ListItem Value="economics" Text="Economics" />
                            <asp:ListItem Value="cs" Text="Computer Science" />
                            <asp:ListItem Value="phe" Text="Physical Education" />
                        </asp:DropDownList>

                    </td>
                    <td>
                        <input type="text" name="ms3" id="ms3" required /></td>
                    <td>
                        <input type="text" name="tm3" id="tm3" required /></td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="subj4" runat="server" required>
                            <asp:ListItem Value="biology" Text="Biology" />
                            <asp:ListItem Value="physics" Text="Physics" />
                            <asp:ListItem Value="chemistry" Text="Chemistry" />
                            <asp:ListItem Value="maths" Text="Maths" />
                            <asp:ListItem Value="hindi" Text="Hindi" />
                            <asp:ListItem Value="english" Text="English" />
                            <asp:ListItem Value="accountancy" Text="Accountancy" />
                            <asp:ListItem Value="business" Text="Business Studies" />
                            <asp:ListItem Value="economics" Text="Economics" />
                            <asp:ListItem Value="cs" Text="Computer Science" />
                            <asp:ListItem Value="phe" Text="Physical Education" />
                        </asp:DropDownList>

                    </td>
                    <td>
                        <input type="text" name="ms4" id="ms4" required /></td>
                    <td>
                        <input type="text" name="tm4" id="tm4" required /></td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="subj5" runat="server" required>
                            <asp:ListItem Value="english" Text="English" />
                            <asp:ListItem Value="physics" Text="Physics" />
                            <asp:ListItem Value="chemistry" Text="Chemistry" />
                            <asp:ListItem Value="maths" Text="Maths" />
                            <asp:ListItem Value="biology" Text="Biology" />
                            <asp:ListItem Value="hindi" Text="Hindi" />
                            <asp:ListItem Value="accountancy" Text="Accountancy" />
                            <asp:ListItem Value="business" Text="Business Studies" />
                            <asp:ListItem Value="economics" Text="Economics" />
                            <asp:ListItem Value="cs" Text="Computer Science" />
                            <asp:ListItem Value="phe" Text="Physical Education" />
                        </asp:DropDownList>

                    </td>
                    <td>
                        <input type="text" name="ms5" id="ms5" required /></td>
                    <td>
                        <input type="text" name="tm5" id="tm5" required /></td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="subj6" runat="server" required>
                            <asp:ListItem Value="NA" Text="NA" />
                            <asp:ListItem Value="physics" Text="Physics" />
                            <asp:ListItem Value="chemistry" Text="Chemistry" />
                            <asp:ListItem Value="maths" Text="Maths" />
                            <asp:ListItem Value="biology" Text="Biology" />
                            <asp:ListItem Value="hindi" Text="Hindi" />
                            <asp:ListItem Value="english" Text="English" />
                            <asp:ListItem Value="accountancy" Text="Accountancy" />
                            <asp:ListItem Value="business" Text="Business Studies" />
                            <asp:ListItem Value="economics" Text="Economics" />
                            <asp:ListItem Value="cs" Text="Computer Science" />
                            <asp:ListItem Value="phe" Text="Physical Education" />
                        </asp:DropDownList>

                    </td>
                    <td>
                        <input type="text" name="ms6" id="ms6" placeholder="NA if not applicable" /></td>
                    <td>
                        <input type="text" name="tm6" id="tm6" placeholder="NA if not applicable" /></td>
                </tr>
            </table>

            <span class="label">Total Marks Scored: </span>
            <input type="text" name="marks_scored" id="marks_scored" required />
            <br />

            <span class="label">Maximum Marks: </span>
            <input type="text" name="max_marks" id="max_marks" required />
            <br />

            <span class="label">Percentage: </span>
            <input type="text" name="percentage" id="percentage" required />
            <br />

            <asp:Button ID="btn" class="btn" runat="server" Text="Submit" ToolTip="Submit" />


        </form>
    </div>
</body>
</html>
