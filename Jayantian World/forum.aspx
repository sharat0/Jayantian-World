<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="forum.aspx.vb" Inherits="Jayantian_World.forum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forum</title>

    <!-- GOOGLE FONTS CDN -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: rgb(214, 235, 253);
            padding-top: 20px;
            padding-bottom: 20px;
        }


        .head {
            display: block;
            text-align: center;
            font-size: 42px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #fff;
            text-shadow: 2px 2px 5px #000;
        }

        .chat {
            width: 80%;
            margin-left: 10%;
            background-color: rgb(247, 249, 253);
            margin-bottom: 10px;
            padding: 10px 20px;
        }

        #message {
            margin-left: 10%;
            width: 80%;
            height: 100px;
        }

        #send {
            color: #FFF;
            transition: all 0.5s;
            position: relative;
            line-height: 20px;
            height: 40px;
            text-align: center;
            width: 150px;
            cursor: pointer;
            background-color: rgb(75, 169, 247);
            border: 0;
            margin-top: 25px;
            margin-left: 45%;
            transition: all .5s ease-in-out;
        }

            #send:hover {
                border: 2px solid white;
                background-color: rgb(29, 147, 243);
            }

        #form_area {
            margin-top: 10px;
        }

        table {
            width: 100%;
        }

        td {
            display: block;
            width: 80%;
            margin-left: 10%;
            background-color: rgb(247, 249, 253);
            padding: 10px 20px;
        }

            td:nth-child(odd) {
                font-size: 20px;
                font-weight: bold;
            }

            td:nth-child(even) {
                font-size: 18px;
                margin-bottom: 10px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">

            <span class="head">Forum</span>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
        </div>

        <div id="form_area">
            <input type="text" name="message" id="message" placeholder="Write Something!">

            <asp:Button ID="send" runat="server" Text="Send" />
        </div>
    </form>
</body>

</html>
