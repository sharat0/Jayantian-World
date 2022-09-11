<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="educational.aspx.vb" Inherits="Jayantian_World.educational" %>

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

    <link rel="stylesheet" href="css/edu_det.css"/>

    <title>Educational Details-10th</title>
</head>
<body>
    <div id="main">
        

        <!-- EDUCATIONAL DETAILS -->
        <form id="educational" runat="server">    
            <span class="head">Educational Details</span>
            
            <!-- 10th DETAILS -->

            <span class="head2">10th Standard Exam Details</span>

            <span class="label">Total Marks Scored: </span>
            <input type="text" name="marks_scored" id="marks_scored" required/>
            <br/>

            <span class="label">Maximum Marks: </span>
            <input type="text" name="max_marks" id="max_marks" required/>
            <br/>
            
            <span class="label">Percentage: </span>
            <input type="text" name="percentage" id="percentage" required/>
            <br/>
            
            <span class="label">Year of Passing: </span>
            <input type="text" name="pass_year" id="pass_year" required/>
            <br/>
            
            <span class="label">Board: </span>
            <asp:DropDownList ID="boards" runat="server" required>
                <asp:ListItem Value="ICSE" Text="ICSE"/>
                <asp:ListItem Value="CBSE" Text="CBSE" />
                <asp:ListItem Value="State Board" Text="State Board" />
            </asp:DropDownList>  
            <br/>

            <span class="label">State: </span>
            <input type="text" name="state" id="state" required/>
            <br/>
            

            <asp:Button ID="btn" class="btn" runat="server" Text="Submit" ToolTip="Submit"/>
            
        </form>
    </div>
</body>
</html>