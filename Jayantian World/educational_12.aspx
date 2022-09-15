<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="educational_12.aspx.vb" Inherits="Jayantian_World.educational_12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet"/>

    <link rel="stylesheet" href="css/edu_12.css"/>

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
            <asp:DropDownList id="board" runat="server" required> 
               
                <asp:ListItem Value="ICSE">ICSE</asp:ListItem>
                <asp:ListItem Value="CBSE">CBSE</asp:ListItem>
                <asp:ListItem Value="State Board">State Board</asp:ListItem>
            </asp:DropDownList>  
            <br/>
            
            <span class="label">State: </span>
            <input type="text" name="state" id="state" required/>
            <br/>

            <span class="label">Name of Institution: </span>
            <input type="text" name="institution" id="institution" required/>
            <br/>
            
            <span class="label">Medium of Instruction: </span>
            <input type="text" name="medium" id="medium" required/>
            <br/>

            <span class="label">Year of Passing: </span>
            <input type="text" name="pass_year" id="pass_year" required/>
            <br/>
            
            <span class="label">Registration Number</span>
            <input type="text" name="reg_no" id="reg_no" required/>
            <br/>
            
            <table>
                <tr>
                    <th>Suject</th>
                    <th>Marks Scored</th>
                    <th>Total Marks</th>
                </tr>
                <tr>
                    <td><input type="text" name="sub1" id="sub1" required/></td>
                    <td><input type="text" name="ms1" id="ms1" required/></td>
                    <td><input type="text" name="tm1" id="tm1" required/></td>
                </tr>
                <tr>
                    <td><input type="text" name="sub2" id="sub2" required/></td>
                    <td><input type="text" name="ms2" id="ms2" required/></td>
                    <td><input type="text" name="tm2" id="tm2" required/></td>
                </tr>
                <tr>
                    <td><input type="text" name="sub3" id="sub3" required/></td>
                    <td><input type="text" name="ms3" id="ms3" required/></td>
                    <td><input type="text" name="tm3" id="tm3" required/></td>
                </tr>
                <tr>
                    <td><input type="text" name="sub4" id="sub4" required/></td>
                    <td><input type="text" name="ms4" id="ms4" required/></td>
                    <td><input type="text" name="tm4" id="tm4" required/></td>
                </tr>
                <tr>
                    <td><input type="text" name="sub5" id="sub5" required/></td>
                    <td><input type="text" name="ms5" id="ms5" required/></td>
                    <td><input type="text" name="tm5" id="tm5" required/></td>
                </tr>
                <tr>
                    <td><input type="text" name="sub6" id="sub6" placeholder="NA if not applicable"/></td>
                    <td><input type="text" name="ms6" id="ms6" placeholder="NA if not applicable"/></td>
                    <td><input type="text" name="tm6" id="tm6" placeholder="NA if not applicable"/></td>
                </tr>
            </table>

            <span class="label">Total Marks Scored: </span>
            <input type="text" name="marks_scored" id="marks_scored" required/>
            <br/>

            <span class="label">Maximum Marks: </span>
            <input type="text" name="max_marks" id="max_marks" required/>
            <br/>
            
            <span class="label">Percentage: </span>
            <input type="text" name="percentage" id="percentage" required/>
            <br/>
            
            <asp:Button ID="btn" class="btn" runat="server" Text="Submit" ToolTip="Submit"/>
            
            
        </form>
    </div>
</body>
</html>