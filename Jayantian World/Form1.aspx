<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Form1.aspx.vb" Inherits="Jayantian_World.Form1" %>

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
    <link rel="stylesheet" href="css/form.css" />

    <title>Registrarion Form | New </title>
</head>
<body>
    <div id="nav">
        <ul>
            <li><a href="index.html">Jayantian World</a></li>
            <li id="nav_links"><a href="index.html" class="nav_link">Home</a></li>
            <li><a href="#" class="nav_link">About Us</a></li>
            <li><a href="admission.html" class="nav_link">Admission</a></li>
            <li><a href="#" class="nav_link">Image Gallary</a></li>
            <li><a href='#' class="nav_link">Contact</a></li>
        </ul>
    </div>
    <div id="form">
        <span class="head">Registration Form</span>
        <span class="login">Already registered? Login <a href="login.aspx">here</a></span>

        <form id="form1" runat="server">
            <span class="head2">Basic Details</span>
            <span class="label">Name :</span>
            <input type="text" name="name" id="name" required />

            <br />

            <span class="label">Programme Category : </span>

            <asp:DropDownList ID="prog" runat="server" required>
                <asp:ListItem Text="Under Graduate" Value="ug" />
                <asp:ListItem Text="Post Graduate" Value="pg" />
                <asp:ListItem Text="Law" Value="law" />
            </asp:DropDownList>

            <span class="label">Branch: </span>
            <asp:DropDownList ID="branch" runat="server" required>
                <asp:ListItem Value="law" Text="Law" />
                <asp:ListItem Value="humanities" Text="Humanities" />
                <asp:ListItem Value="cs" Text="Computer Science" />
                <asp:ListItem Value="science" Text="Science" />
                <asp:ListItem Value="ls" Text="Life Science" />
            </asp:DropDownList>
            <br />

            <br />

            <span class="label">Email: </span>
            <input type="email" name="email" id="email" required />

            <br />

            <span class="label">Phone Number: </span>
            <input type="tel" name="num" id="num" required />

            <br />

            <span class="label">Date of birth: </span>
            <input type="date" name="dob" id="dob" required />

            <span class="head2 payment">Payment Details</span>

            <label for="cars">Payment Mode:</label>

            <select name="payment" id="payment">
                <option value="card">Card</option>
            </select>
            <br>
            <span class="label">Application Fee: </span>

            <br>
            <asp:Label ID="fee" runat="server"></asp:Label>

            <br />
            <asp:Button ID="submit" runat="server" Text="Submit" ToolTip="Submit" />
        </form>
    </div>
</body>
