<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="payment.aspx.vb" Inherits="Jayantian_World.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- GOOGLE FONTS CDN -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet"/>

    <!-- Paragraph font -->
    <link href="https://fonts.googleapis.com/css2?family=Hind&display=swap" rel="stylesheet"/>

    <style>
        span#fee {
    margin-left: 43%;
    font-size: 25px;
}
    </style>
    <link rel="stylesheet" href="css/pay.css"/>

    <title>Form Fee Paymet</title>
</head>
<body>

    <span class="head">Payment</span>
    <div id="main">
        <div class="form">
            <div class="left">
            <form id="form1" runat="server">
                <span class="fee">Total Payable Amount: </span>
                <asp:Label ID="fee" runat="server"  class="data"/>
                <br/>
                <span class="label">Name on Card</span>
                <input type="text" name="name" id="name" placeholder="Name" required/>
                <br/>

                <span class="label">Card Number</span>
                <input type="text" name="card" id="card" placeholder="Card Number" required/>
                <br/>

                <span class="label">Expiry Date</span>
                <input type="date" name="expiry" id="expiry" min="08-27-2022" max="09-01-2028" required/>
                <br/>

                <span class="label">CVV</span>
                <input type="password" name="cvv" id="cvv" placeholder="cvv" required/>
                
                <asp:Button ID="submit" runat="server" Text="Pay" ToolTip="Submit"/>
            </form>
        </div>
            <div class="rig">
                <img src="img/form/cc2.gif" alt="Credit Card" id="cc_img"/>
            </div>
        </div>
    </div>
</body>
</html>
