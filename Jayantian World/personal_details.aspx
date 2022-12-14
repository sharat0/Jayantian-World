<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="personal_details.aspx.vb" Inherits="Jayantian_World.personal_details" %>
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
    font-family: 'Hind', sans-serif;
    box-sizing: border-box;
}

#main{
    padding-top: 50px;
    padding-bottom: 50px;
    background: url('../img/personal_details/2.jpg') no-repeat center;
    background-size: cover;

}

.head{
    font-family: 'Open Sans', sans-serif;
    font-size: 34px;
    display: block;
    /* text-align: center; */
    margin-left: 15%;
    text-decoration: underline;
    padding: 20px 0;
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

/* COURSE DETAILS INPUT MARGIN */

#cat{
    margin-left: 33px;
}

#dept{
    margin-left: 75px;
}

#course{
    margin-left: 112px;
}

/* PERSONAL DETAILS INPUT MARGIN */

#name{
    margin-left: 105px;
}

#dob{
    margin-left: 51px;
}

#email{
    margin-left: 105px;
}

#num{
    margin-left: 30px;
}

#gender{
    margin-left: 90px;
}

#btown{
    margin-left: 68px;
}

#bstate{
    margin-left: 68px;

}

#cur-add{
    margin-left: 28px;
}

.lang{
    margin-left: 106px;
}


/* FAMILY DETAILS INPUT MARGIN */

#fname{
    margin-left: 60px;
}

#mname{
    margin-left: 56px;
}

#loc-gur{
    margin-left: 65px;
}


#btn{
    margin-top: 25px;
    margin-left: 10%;
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
        

        <!-- PERSONAL DETAILS -->
        <form id="form1" runat="server">
        

            <!-- COURSE DETAILS -->

            <span class="head">Course Details</span>
            <span class="label">Course Category:</span>
            <%--<input type="text" name="cat" id="cat"/>--%>
            <asp:Label ID="cat" runat="server"/>
            <br/>


            <span class="label">Course:</span>
            <%--<input type="text" name="course" id="course" required/>--%>
            <asp:DropDownList id="courses" runat="server" required> 
               <asp:ListItem Value="BCA">BCA</asp:ListItem>
               <asp:ListItem Value="BCA Analytics">BCA Analytics</asp:ListItem>
               <asp:ListItem Value="BSC Computer Science">BSC Computer Science</asp:ListItem>
               <asp:ListItem Value="Microbiology">MicroBiology</asp:ListItem>
               <asp:ListItem Value="Biotechnology">Biotechnology</asp:ListItem>
               <asp:ListItem Value="Forensic Science">Forensic Science</asp:ListItem>
               <asp:ListItem Value="BBA LLB">BBA LLB</asp:ListItem>
               <asp:ListItem Value="BCOM LLB">BCOM LLB</asp:ListItem>
               <asp:ListItem Value="BA LLB">BA LLB</asp:ListItem>
               <asp:ListItem Value="English">English</asp:ListItem>
               <asp:ListItem Value="Hindi">Hindi</asp:ListItem>
               <asp:ListItem Value="Kannada">Kannada</asp:ListItem>
               <asp:ListItem Value="History">History</asp:ListItem>
               <asp:ListItem Value="Media">Media</asp:ListItem>
               <asp:ListItem Value="Political Science">Political Sciece</asp:ListItem>
               <asp:ListItem Value="Sociology">Sociology</asp:ListItem>
               <asp:ListItem Value="Psychology">Psychology</asp:ListItem>

            </asp:DropDownList> 

            <br/>

            
            <span class="label">Additional Language:</span>
            <asp:DropDownList id="add_langs" runat="server" required> 
            
               <asp:ListItem Value="eng">Additioal Eglish</asp:ListItem>
               <asp:ListItem Value="hindi">Hindi </asp:ListItem>
               <asp:ListItem Value="kannada">Kannada </asp:ListItem>
            </asp:DropDownList>
            <%--<input type="text" name="add_lang" id="add_lang" required/>--%>
            <br/>


            <!-- PERSONNAL DETAILS -->

            <span class="head">Personal Details</span>
            <span class="label">Name:</span>
            <%--<input type="text" name="name" id="name"/>--%>
            <asp:Label ID="name" runat="server"/>
            <br/>

            <span class="label">Date of Birth:</span>
            <%--<input type="text" name="dob" id="dob"/>--%>
            <asp:Label ID="dob" runat="server"/>
            <br/>

            <span class="label">Email:</span>
            <%--<input type="email" name="email" id="email"/>--%>
            <asp:Label ID="email" runat="server"/>
            <br/>

            <span class="label">Phone Number:</span>
            <%--<input type="text" name="num" id="num"/>--%>
            <asp:Label ID="num" runat="server"/>
            <br/>

            <span class="label">Gender:</span>
            <%--<input type="text" name="gender" id="gender"/>--%>
            <asp:DropDownList id="gender" runat="server" required> 
               
                <asp:ListItem Value="male">Male</asp:ListItem>
                <asp:ListItem Value="female">Female</asp:ListItem>
                <asp:ListItem Value="other">Other</asp:ListItem>
            </asp:DropDownList>  
            <br/>

            <span class="label">Birth Town:</span>
            <input type="text" name="btown" id="btown" required/>
            <br/>

            <span class="label">Birth State:</span>
            <input type="text" name="bstate" id="bstate" required/>
            <br/>

            <span class="label">Permanent Address:</span>
            <input type="text" name="per-add" id="per-add" required/>
            <br/>

            <span class="label">Current Address:</span>
            <input type="text" name="cur-add" id="cur-add" required/>
            <br/>
            
            <span class="label">Languages Known:</span>
            <input type="text" name="lang1" id="lang1" required/>
            <br/>
            <input type="text" name="lang2" id="lang2" class="lang" required/>
            <br/>
            <input type="text" name="lang3" id="lang3" class="lang" placeholder="Type nill if not any" required/>
            <br/>
            <input type="text" name="lang4" id="lang4" class="lang" placeholder="Type nill if not any" required/>
            <br/>
            <input type="text" name="lang5" id="lang5" class="lang" placeholder="Type nill if not any" required/>


            <!-- FAMILY DETAILS -->

            <span class="head">Family Details</span>

            <span class="label">Father's Name:</span>
            <input type="text" name="fname" id="fname" required/>
            <br/>

            <span class="label">Mother's Name:</span>
            <input type="text" name="mname" id="mname" required/>
            <br/>

            <span class="label">Local Gurdian:</span>
            <input type="text" name="loc-gur" id="loc-gur" required/>
            <br/>

           
            <br/>

            <asp:Button ID="btn" class="btn" runat="server" Text="Submit" ToolTip="Submit" OnClick="btn_Click"/>
            
        </form>
    </div>
</body>
</html>