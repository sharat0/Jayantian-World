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
    height: 100vh;
    background: url('../img/personal_details/2.jpg') no-repeat center;
    background-size: cover;

}

.head{
    font-family: 'Open Sans', sans-serif;
    font-size: 34px;
    display: block;
    /* text-align: center; */
    margin-left: 10%;
    text-decoration: underline;
    padding: 20px 0;
}

.head2{
    display: block;
    font-size: 24px;
    font-family: 'Open Sans', sans-serif;
    margin-bottom: 25px;
    margin-left: 11%;
    text-decoration: underline 2px solid #000;
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
    padding-left: 2px;
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



#max_marks{
    margin-left: 20px;
}

#percentage{
    margin-left: 60px;
}

#pass_year{
    margin-left: 25px;
}

#boards {
    margin-left: 102px;
	margin-bottom: 10px;
	width: 40%;
	height: 30px;
	text-align: center;
}

#state{
    margin-left: 105px;
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