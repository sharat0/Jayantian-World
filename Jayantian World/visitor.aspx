<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="visitor.aspx.vb" Inherits="Jayantian_World.visitor" %>

<!DOCTYPE html>

<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- GOOGLE FONTS CDN -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet" />

    <!-- Paragraph font -->
    <link href="https://fonts.googleapis.com/css2?family=Hind&display=swap" rel="stylesheet" />

    <!-- FONT AWESOME CDN -->
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/6d20788c52.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/nav.css" />

    <style>
        

        #form{
        background: url(../img/form/bg.jpg) no-repeat center;
        background-position: center;
        background-size: cover;
        background-attachment: fixed;
        padding-bottom: 50px;
        height: 84vh;
        }

        #vno{
            height: 20px;
            width: 40%;
        }
       
        .head{
            display: block;
            text-align: center;
            font-family: 'Open Sans', sans-serif;
            font-size: 36px;
            padding: 10px 0;
        }

        .head2{
            display: block;
            font-family: 'Open Sans', sans-serif;
            font-size: 24px;
            padding: 5px 0;
            text-decoration: underline 2px #000;
        }

        .login{
            display: block;
            font-size: 18px;
            text-align: center;
        }

        form{
                width: 70%;
                height: 80%;
                background-color: rgba(240, 240, 240, .3);
                box-shadow: 2px 2px 10px #000;
                margin-left: 15%;
                text-align: justify;
                padding-left: 10%;
                padding-bottom: 40px;
        }

       #branch{
	        text-align:center;
	        width: 18%;
        }

        input[type=text], input[type=tel], input[type=email]{
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #000;
            padding-left: 5px;
            outline: none;
            width: 22%;
        }

        input[type=email]{
	        margin-top:0;
        }

        input{
            margin-left: 15px;
            margin-top: 25px;
        }

        .payment{
            padding-top: 20px;
            padding-bottom: 20px;
        }

        select{
            width: 18%;
            text-align: center;
            margin-bottom: 20px;
            margin-left: 15px;
        }

        #submit{
            width: 20%;
            padding: 5px 20px;
            background-color: #33b9e7;
            outline: none;
            border: none;
            font-size: 18px;
            cursor: pointer;
            transition: all .3s ease;
            margin-left: 25%;
        }

        #submit:hover{
            background-color: #187ef1;
            box-shadow: 2px 2px 10px #000;
            color: #fff;
        }

        #uid{
            width: 60%;
        }
        #fetch{
            width: 10%;
            padding: 5px 20px;
            background-color: #33b9e7;
            outline: none;
            border: none;
            font-size: 18px;
            cursor: pointer;
            transition: all .3s ease;
            margin-left: 5%;
        }
        #or{
            display:block;
            font-size: 30px;
        }
    </style>

    <title>Registrarion Form | New </title>
</head>
<body>
    <div id="nav">
        <ul>
            <li><a href="index.html">Jayantian World</a></li>
            <li id="nav_links"><a href="index.aspx" class="nav_link">Home</a></li>
            <li><a href="#" class="nav_link">About Us</a></li>
            <li><a href="admission.aspx" class="nav_link">Admission</a></li>
            <li><a href="visitor.aspx" class="nav_link">Visitor</a></li>
            <li><a href='login.aspx' class="nav_link">Login</a></li>
        </ul>
    </div>
    <div id="form">
        <span class="head">Visitor's Form</span>

        <form id="form1" runat="server">
            <div id="fetch_box">
                <input type="text" name="usrid" id="usrid" />
                <asp:Button ID="fetch" runat="server" Text="Fetch" />
                <span id="or">or</span>
            </div>
            <span class="label">Name :</span>
            <input type="text" name="name" id="name"/>

            <br />

            
            <span class="label">Email: </span>
            <input type="email" name="email" id="email"/>

            <br />

            <span class="label">Phone Number: </span>
            <input type="tel" name="num" id="num" />

            <br />


            <span class="label">Purpose of visit :</span>
            <input type="text" name="purpose" id="purpose" />

            <br />
            
            <asp:Button ID="submit" runat="server" Text="Submit" ToolTip="Submit" />
        </form>
    </div>
</body>
