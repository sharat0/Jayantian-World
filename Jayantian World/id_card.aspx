<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="id_card.aspx.vb" Inherits="Jayantian_World.id_card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ID Card</title>

    <link rel="stylesheet" href="css/id.css">
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

        #main_div {
            padding-top: 3%;
            background: url("img/id_bg.jpg") no-repeat center;
            background-size: cover;
            height: 100vh;
        }

        #main {
            display: flex;
            padding-top: 5%;
        }

        .head {
            display: block;
            font-size: 42px;
            font-weight: bold;
            text-align: center;
            text-decoration: underline;
        }

        #front, #back {
            width: 25%;
            margin-left: 10%;
            height: 60vh;
            border: 3px solid #000;
            border-radius: 10px;
        }

        #front {
            margin-left: 20%;
        }

        .glass {
            height: 56vh;
            margin-top: 2vh;
            width: 96%;
            margin-left: 2%;
            background-color: rgba(255, 255, 255, .8);
            padding-left: 5%;
            padding-top: 5%;
        }

        #logo {
            width: 90%;
            padding: 5% 5%;
        }

        #front {
            background: url("img/login/bg1.png") no-repeat center;
            background-size: cover;
        }


        .lab_top {
            margin-top: 20px;
        }

        .label {
            display: inline-block;
            font-weight: bold;
            margin-bottom: 20px;
        }

        #back {
            background-color: rgb(220, 245, 255);
        }



        #details {
            padding-top: 5vh;
            padding-left: 3%;
            border-bottom: 3px solid #000;
        }

        #bottom {
            padding-top: 2vh;
            padding-left: 3%;
        }

        #upload{
            float:right;
            height:70px;
            width:70px;
        }

        #id_img{
            float: right;
            height: 109px;
            width: 70px;
            position: absolute;
            top: 330px;
            margin-left: 175px;
        }

        img{
            float:right;
            height:130px;
            width:110px;
        }
        th{
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main_div">
            <span class="head">ID Card</span>
            <div id="main">
                <div id="front">
                    <div class="glass">
                        <img src="/img/logo.png" alt="Logo" id="logo">
                        <span class="label lab_top">Name:</span>
                        <asp:Label ID="name" runat="server" class="data"></asp:Label>

                        <br>
                        <span class="label">Batch:</span>
                        <asp:Label ID="batch" runat="server" class="data"></asp:Label>

                        <br>
                        <span class="label">Course:</span>
                        <asp:Label ID="course" runat="server" class="data"></asp:Label>

                        <br>
                        <span class="label">Department:</span>
                        <asp:Label ID="department" runat="server" class="data"></asp:Label>

                        <br>
                        <span class="label">Register Number:</span>
                        <asp:Label ID="rno" runat="server" class="data"></asp:Label>

                        <div id="upload">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick = "Upload" />
                        </div>

                        <div id="id_img">
                        <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:ImageField DataImageUrlField="Path" HeaderText="" ItemStyle-Height="70px" ItemStyle-Width="70px"/>
                            </Columns>
                        </asp:GridView>
                            </div>
                        <div id="dialog" style="display: none">
                        </div>

                        <br>
                    </div>
                </div>
                <div id="back">
                    <div id="details">
                        <span class="label">Address:</span>
                        <asp:Label ID="address" runat="server" class="data"></asp:Label>

                        <br>
                        <span class="label">DOB:</span>
                        <asp:Label ID="dob" runat="server" class="data"></asp:Label>

                        <br>
                        <span class="label">Mobile:</span>
                        <asp:Label ID="mobile" runat="server" class="data"></asp:Label>
                    </div>
                    <div id="bottom">
                        <h2>Kristu Jayanti College,</h2>
                        <p>
                            K. Narayanapura, Kothanur (Post),
                            <br>
                            Bangalore- 560077,<br>
                            Karnataka
                            <br>
                            <b>Telephone:</b> 080-28465611 / 28465770
                            <br>
                            <b>e-mail : </b>info@kristujayanti.com
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
    <script type="text/javascript">
        var totalRowCount = 0;
        var rowCount = 0;
        var gridView = document.getElementById("gvImages");
        var rows = gridView.getElementsByTagName("tr")
        if (rows.length > 0) {
            document.getElementById("FileUpload1").style.display = "none";
            document.getElementById("btnUpload").style.display = "none";
        }

   
    </script>
</html>
