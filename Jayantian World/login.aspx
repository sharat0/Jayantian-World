﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Jayantian_World.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#main{
    display: flex;
    height: 100vh;
}

#left{
    flex: 1;
    width: 50%;
    background: url(../img/login/bg2.jpg) no-repeat center;
    background-size: cover;
    padding-top: 14%;
}

.left_head{
    font-size: 38px;
    text-align: center;
    display: block;
    color: #fff;
    text-shadow: 1px 1px 5px #000;
}

#left p{
    margin-top: 35px;
    color: #fff;
    font-size: 26px;
    text-align: center;
    padding: 0 10%;
    text-shadow: 1px 1px #000;
    line-height: 35px;
}

.join{
    display: inline-block;
    padding: 20px 15px;
    margin-left: 20%;
    font-size: 22px;
    margin-top: 15%;
    text-align: center;
    border: 2px solid #fff;
    transition: background-color .3s ease-in-out;
}
.join a{
    color: #fff;
    text-decoration: none;
}

.join:hover{
    background-color: #0086af;
}

#right{
    width: 50%;
    background: url(../img/personal_details/bg.jpg) no-repeat center;
    background-size: cover;
    padding-top: 10%;
    padding-left: 10%;
}

.head{
    padding-left: 5%;
    font-size: 26px;
    color: #fff;
    text-shadow: 1px 1px #000;
    text-decoration: underline;
}

form{
    background-color: rgba(255,255,255,.7);
    margin-left: 3%;
    padding-left: 12%;
    padding-bottom: 5%;
    width: 70%;
    border-radius: 10px;
}

.label{
    display: inline-block;
    margin-bottom: 10px;
    margin-top: 30px;
}

input{
    display: block;
    height: 30px;
    width: 70%;
    padding-left: 10px;
}

.btn{
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
    margin-left: 13%;
    transition: all .5s ease-in-out;
}

.btn:hover{
    border: 2px solid white;
    background-color: rgb(29, 147, 243);
}
  
    </style>

    <title>Login</title>
</head>
<body>

    <div id="main">
        <div id="left">
            <span class="left_head">Welcome to Jayantian World</span>
            <p>
                This is a place for all Jayantian students as well as faculty.
                <br />
                A single place for everything from admission to chat forums, doubts, notices.
                <br />
            </p>
            <span class="join"><a href="form1.aspx" target="_blank" rel="noopener noreferrer">Still not filled
                    admission form? Fill here</a></span>
        </div>
        <div id="right">
            <span class="head">Login</span>
            <form id="login" runat="server">
                <span class="label">Id</span>
                <br />
                <input type="text" name="id" id="id" placeholder="ID" />

                <span class="label">Password</span>
                <br />
                <input type="password" name="pass" id="pass" placeholder="Password" />

                <asp:Button ID="submit" class="btn" runat="server" Text="LogIn" ToolTip="Submit" />
            </form>
        </div>
    </div>
</body>
</html>
