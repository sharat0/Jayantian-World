<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admission.aspx.vb" Inherits="Jayantian_World.admission" %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xaspx">
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

    <!-- FONT AWESOME CDN -->
    <!-- fontawesome -->
    <script/ src="https://kit.fontawesome.com/6d20788c52.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/nav.css"/>
    <link rel="stylesheet" href="css/adm.css"/>

    <style>
        img.rank_img {
            width: 90%;
            height: 350px;
        }
    </style>

    <title>Admission</title>
</head>
<body>
    <div id="nav">
        <ul>
            <li><a href="index.aspx">Jayantian World</a></li>
            <li id="nav_links"><a href="index.aspx" class="nav_link">Home</a></li>
            <li><a href="#" class="nav_link">About Us</a></li>
            <li><a href="admission.aspx" class="nav_link">Admission</a></li>
            <li><a href="#" class="nav_link">Image Gallary</a></li>
            <li><a href='#' class="nav_link">Contact</a></li>
            <li id="nav_btn"><a href="form1.aspx" id="login">Admission Form</a></li>
        </ul>
    </div>

    <div id="main">
        <span class="head">Admission</span>
        <span class="head3">Explore the possibilities of a Jayantian Student</span>
        <div id="images_ug">
            <img src="img/adm/img_1.jpg" alt="Image1" id="img1"/>
            <img src="img/adm/img2.jpg" alt="Image2" id="img2"/>
            <img src="img/adm/img_3.jpg" alt="Image3" id="img3"/>
        </div>
        <span class="head2">Note</span>
        <div class="flex_container">
            <div class="left">
                <p class="ug_p">
                    The Institution has not appointed any Middlemen or Agents for the admission process. Management is
                    not responsible for any communication from unauthorized sources promising admission to various
                    courses of the institution. All applicants are hereby cautioned not to be misguided with such
                    personnels or agencies.
                    <br/> <br/>
                    ADMISSION TO KRISTU JAYANTI COLLEGE IS DIRECT AND BASED ON MERIT AND FULFILLMENT OF ELIGIBILITY
                    CRITERIA
                </p>
            </div>
            <div class="right fee">
                <span class="head5">Registration Fee</span>
                <ul>
                    <li>UG Course: Rs 500/-</li>
                    <li>PG Course: Rs 700/-</li>
                    <li>MBA Programme: Rs 1000/-</li>
                    <li>Law Programmes: Rs 500/-</li>
                    <li></li>
                </ul>
            </div>
        </div>
        <span class="head2">Undergraduates</span>
        <div class="flex_container">
            <div class="left">
                <span class="head4">Undergraduate Admission</span>
                <p class="ug_p">Our College provides 40+ Under Graduate Programmes for student to excel. We review each
                    applicant
                    with an eye to academic excellence, intellectual vitality and personal context. <br/>
                    The primary criteria in assessing applicants will be based on their academic performance. This is
                    mainly done by considering their performance in qualifying examinations and in-house screening
                    rounds which is designed accordingly for the programmes. </p>
                <span class="apply"><a href="form1.aspx" target="_blank" rel="noopener noreferrer">Apply Now</a></span>
            </div>
            <div class="right ug_adm">
                <img src="img/adm/ug_aside.png" alt="Ranking" class="rank_img"/>
            </div>
        </div>

        <span class="head2">Post Graduates</span>
        <div class="flex_container pg_programme">
            <div class="left">
                <span class="head4">Post Graduate Admission</span>
                <p class="ug_p"> The faculty members are committed to nurturing an environment for proper growth of
                    intellectual insight on business aspects. The need of the current business for acquiring skills and
                    competence is thoroughly stressed upon in the formation of the syllabus. The department also lays
                    emphasis on the moral, social and patriotic growth of students. The impact that the Department
                    creates is felt in the greater altitudes that the alumni have achieved both nationally and
                    internationally. </p>
                <span class="apply"><a href="form1.aspx" target="_blank" rel="noopener noreferrer">Apply Now</a></span>
            </div>
            <div class="right ug_adm">
                <img src="img/adm/pg_adm.jpg" alt="Ranking" class="rank_img"/>
            </div>
        </div>

        <div id="process">
            <span class="head2">Admission Process</span>
            <div class="flex_container">
                <div class="left">
                    <img src="img/adm/adm_process.jpg" alt="Admission Process" id="adm_img"/>
                </div>
                <div class="right">
                    <span id="assistance">Contact us for further assistance/ clarifications</span> 
                    <ul>
                        <li>Mob No: <b>9449451111 | 9686697440</b></li>
                        <li>E-mail: <b>admission@kristujayanti.com</b></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="foot">
        <div class="foot_divs">
            <span class="foot_head">Kristu Jayanti College</span>
            <span class="foot_add body">Bengaluru, Karnataka</span>
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.6435209667916!2d77.64028391482297!3d13.05834814079901!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae17578c79da7d%3A0xe96dcd8e2b982f8e!2sKristu%20Jayanti%20College%2C%20Autonomous!5e0!3m2!1sen!2sin!4v1661062854753!5m2!1sen!2sin"
                width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="foot_divs">
            <span class="foot_head">Quick Links</span>
            <ul>
                <li id="foot_links"><a href="idex.aspx" class="foot_link">Home</a></li>
                <li><a href="#" class="foot_link">About Us</a></li>
                <li><a href="admission.aspx" class="foot_link">Admission</a></li>
                <li><a href="#" class="foot_link">Image Gallary</a></li>
                <li><a href='#' class="foot_link">Contact</a></li>
            </ul>
        </div>
        <div class="foot_divs">
            <span class="foot_head">Address</span>
            <span class="body">K Narayanpura, Kothanur, Bengaluru -560077, India</span>

        </div>
        <div class="foot_divs">
            <span class="foot_head">Contact</span>
            <span class="contact_body con_fir"><i class="fa-solid fa-square-phone"></i>(080)68737777</span>
            <span class="contact_body"><i class="fa-solid fa-square-phone"></i>(080)28465611</span>
            <span class="contact_body"><i class="fa-solid fa-square-phone"></i>(080)28465770</span>
            <span class="contact_body"><i class="fa-solid fa-square-phone"></i>(080)28465353</span>
            <span class="contact_body"><i class="fa-solid fa-envelope"></i><a href="mailto:info@kristujayanti.com">
                    info@kristujayanti.com</a></span>
        </div>
    </div>
</body>

</html>
