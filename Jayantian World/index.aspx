<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Jayantian_World.WebForm1" %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xaspx">
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
        /* FIRST MAIN DIV AFTER NAV STARTS */


#overview {
    background: url(img/fact_bg.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    height: 90vh;
    min-height: 500px;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
}

.flex_container {
    display: flex;
}

#p_head{
    font-size: 36px;
    padding: 22% 15%;
    padding-bottom: 30px;
    line-height: 50px;
    text-align: center;
    font-family: 'Poppins', sans-serif;
    font-weight: bold;
}

#p_body{
    margin: 4% 8%;
    line-height: 25px;
    font-size: 20px;
    padding-bottom: 20px;
    text-align: justify;
}

.left {
    flex: 1;
    width: 50%;
}

.word {
    color: rgb(80, 80, 248);
}

.right {
    width: 50%;
}

#img1{
    margin-top: 15px;
    width: 40%;
    border-radius: 50%;
    box-shadow: 2px 2px 15px rgb(0, 0, 29);
    display: inline-block;
}

#img2{
    margin-top: 20px;
    margin-left: 20px;
    width: 50%;
    border-radius: 5px;
    box-shadow: 2px 2px 25px rgb(0, 0, 29);
    display: inline-block;
}
#img3{
    margin-top: 20px;
    margin-left: 20%;
    width: 50%;
    border-radius: 5px;
    box-shadow: 5px 5px 25px rgb(0, 0, 0);
    display: inline-block;

}

.home_img{
    transition: transform .3s ease;
}

.home_img:hover{
    transform: scale(1.1,1.1);
}


/* STUDENT SUPPORT BLOCK STARTS */

/* HEADINGS */
.head {
    display: block;
    text-align: center;
    font-family: 'Open Sans', sans-serif;
    font-size: 34px;
    font-weight: bold;
    text-decoration: underline 2px #000;
    margin-bottom: 30px;
    padding-top: 20px;
}

.support_box {
    display: flex;
    padding-bottom: 70px;
}

.supports {
    display: block;
    width: 17%;
    margin-left: 2%;
    background-color: rgb(240 246 252);
    height: 170px;
    text-align: center;
    padding: 20px 15px;
    border-radius: 10px;
    cursor: pointer;
    transition: all .5s ease-in-out;
}

.supports:hover {
    box-shadow: 2px 2px 25px #000;
    transform: translateY(-10px);
}

.supports i {
    font-size: 30px;
    background-color: #fff;
    color: #000;
    padding: 20px 20px;
    border-radius: 25%;
    margin-bottom: 10px;
}

.box_head {
    font-size: 18px;
}



/* ABOUT DIV STARTS */

#about {
    padding-bottom: 40px;
    background: url(img/fact_bg.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: fixed;
}

#about p {
    margin: 0px 8%;
    line-height: 25px;
    font-size: 18px;
    padding-bottom: 20px;
    text-align: justify;
}

#about img {
    margin-top: 7%;
    margin-left: 3%;
    width: 90%;
    height: 450px;
    border-radius: 10px;
    box-shadow: 4px 4px 10px rgb(80, 80, 248);
}

.more {
    display: inline-block;
    text-align: center;
    font-size: 22px;
    background-color: #439aff;
    margin-left: 40%;
    padding: 5px 20px;
    padding-bottom: 0px;
    border-radius: 5px;
    transition: all .5s ease-in;
    box-shadow: 2px 2px 10px rgb(99, 206, 255);
}

.more a {
    text-decoration: none;
    color: #fff;
}

.more:hover {
    background-color: #248aff;
    transform: translateY(-2px);
}

.more i {
    font-size: 18px;
    background-color: transparent;
    animation: arrow 1s ease-in-out infinite;
    padding-left: 15px;
    color: #fff;
}

@keyframes arrow {
    0% {
        transform: translateX(0px) rotate(270deg);
    }

    100% {
        transform: translate(10px) rotate(270deg);
    }
}


/* ABOUT ENDS */


/* ADMISSION STARTS */


#admission {
    padding-bottom: 30px;
}

#head_p {
    font-size: 22px;
    margin: 0 20%;
    text-align: center;
}

#myVideo {
    margin-top: 20px;
    margin-left: 7%;
    min-width: 90%;
    width: 90%;
    height: 550px;
    min-height: 50%;
}

.adm_box_head {
    display: block;
    font-size: 22px;
    font-weight: bold;
    padding: 2% 5%;
    font-family: 'Ubuntu', sans-serif;
}

.adm_p {
    text-align: justify;
    padding: 1% 5%;
    font-size: 19px;
}

#admission-more {
    display: inline-block;
    margin-left: 40%;
    margin-top: 25px;
    min-width: 10%;
    background-color: #248aff;
    padding: 10px 20px;
    transition: all .3s ease-in-out;
}

#admission-more:hover {
    background-color: #0479ff;
}

#admission-more a {
    color: #fff;
    text-decoration: none;
    font-size: 20px;
}


/* ADMISSION ENDS */

/* FACTS BEGINS */

#fact {
    padding: 3% 0;
    /* color: #fff; */
    background-color: #ffffff;
    background-image: url("img/fact_bg.jpg");
    background-attachment: fixed;
    background-repeat: no-repeat;
    background-position: top left;
    background-size: cover;
    box-shadow: 0px 0px 10px #000;
}

#facts {
    display: flex;
    /* background-color: rgb(67, 154, 255, 0.7); */
}

.count {
    width: 15%;
    margin: 1% 2%;
    text-align: center;
}

.cnt_head {
    display: block;
    font-size: 24px;
    /* text-decoration: underline 2px black; */
    border-bottom: 2px solid #fff;
}

.cnt-value {
    display: block;
    font-size: 28px;
    font-weight: bold;
    padding-top: 10px;
}



    </style>

    <title>Jayantian World</title>
</head>

<body>
    <div id="nav">
        <ul>
            <li><a href="index.aspx">Jayantian World</a></li>
            <li id="nav_links"><a href="index.aspx" class="nav_link">Home</a></li>
            <li><a href="#" class="nav_link">About Us</a></li>
            <li><a href="admission.aspx" class="nav_link">Admission</a></li>
            <li><a href='visitor.aspx' class="nav_link">Visitor</a></li>
            <li><a href="login.aspx" class="nav_link">Login</a></li>
            <li id="nav_btn"><a href="form1.aspx" id="login">Admission Form</a></li>
        </ul>
    </div>
    <div id="overview">
        <div class="flex_container">
            <div class="left">
                <p id="p_head">
                    Welcome to the <span class="word">Future</span> of Indian Education System
                </p>
                <p id="p_body">To provide educational opportunities to all aspiring youth to excel in life by nurturing academic excellence, fostering values, creating civic responsibility, inculcating environmental concern and building global competencies in a dynamic environment.</p>
            </div>

            <div class="right">
                <img src="img/home_1.jpg" alt="Logo" id="img1" class="home_img" />
                <img src="img/home_2.png" alt="Logo" id="img2" class="home_img" />
                <img src="img/home_3.jpg" alt="Logo" id="img3" class="home_img" />
            </div>
        </div>
    </div>
    <div id="support">
        <span class="head">Student Support</span>
        <div class="support_box">
            <div class="supports">
                <i class="fa-solid fa-building"></i>
                <br />
                <span class="box_head">Entrepreneurship and Innovation Centre</span>
            </div>
            <div class="supports">
                <i class="fa-solid fa-house-medical"></i>
                <br />
                <span class="box_head">Counselling Center</span>

            </div>
            <div class="supports">
                <i class="fa-solid fa-kit-medical"></i>
                <br />
                <span class="box_head">Health Care</span>

            </div>
            <div class="supports">
                <i class="fa-solid fa-venus"></i>
                <br />
                <span class="box_head">Women Empowerment Cell</span>

            </div>
            <div class="supports">
                <i class="fa-solid fa-hands-holding-child"></i>
                <br />
                <span class="box_head">Anti- Ragging Committee</span>

            </div>
        </div>
    </div>
    <div id="about">
        <span class="head">About Kristu Jayanti College</span>
        <br />
        <div class="flex_container">
            <div class="left">
                <p>
                    Kristu Jayanti College strives to fulfill its mission to provide educational opportunities to all aspiring
                    youth to
                    excel in life by developing academic excellence, fostering values, creating civic responsibility,
                    inculcating environmental concern and building global competencies in a dynamic environment.
                </p>
                <br />
                <p>
                    Kristu Jayanti College, founded in 1999, is managed by "BODHI NIKETAN TRUST", formed by the members
                    of St.
                    Joseph Province of the Carmelites of Mary Immaculate (CMI). The College is affiliated to Bengaluru
                    North
                    University and is reaccredited with grade 'A++' in 2021 by NAAC in the Third Cycle of Accreditation.
                    The
                    College is recognized by UGC under the category 2(f) & 12(B). The College has been accorded
                    Autonomous
                    Status since 2013 by the University Grants Commission, Government of Karnataka & the Bangalore
                    University.
                    For its contribution in the field of Education, Kristu Jayanti College has been recently given the
                    Clean and
                    Smart Campus award. In the India Today - MDRA survey 2021, Kristu Jayanti College, Bengaluru is
                    awarded as
                    the Best Emerging College of the Century at National Level and the college is ranked 4th Best BCA,
                    12th Best
                    MSW, 17th Best BBA, 19th Best Commerce, 21st Best Arts, 24th Best Science and 34th Best Mass
                    Communication
                    College in India. The College is also ranked 2nd Best in BCA & MSW, 3rd best in Commerce, 4th Best
                    in
                    Science & Arts and 6th best in BBA and Mass Communication among the colleges in Bengaluru.
                </p>

            </div>
            <div class="right">
                <img src="img/rt2.png" alt="img" />
            </div>

        </div>
        <span class="more"><a href="about.aspx">Read More <i id="more-i" class="fa-solid fa-arrow-down"></i></a></span>
    </div>
    <!-- ABOUT ENDS -->

    <!-- ADMISSION STARTS -->
    <div id="admission">
        <span class="head">Admission</span>
        <p id="head_p">Offering extraordinary freedom to explore, to collaborate, and to challenge yourself</p>
        <div class="video" onclick="pause()">
            <video autoplay muted loop id="myVideo">
                <source src="img/KJC.mp4" type="video/mp4" />
            </video>
        </div>

        <div class="flex_container" onscroll="updated()">
            <div class="left">
                <span class="adm_box_head">Explore the possibilities of a Jayantian education as you map out your college journey.
                </span>
                <p class="adm_p">
                    We look for distinctive students who exhibit an abundance of energy and curiosity in their classes,
                    activities, projects, research and lives.
                </p>
            </div>

            <div class="right">
                <span class="adm_box_head">Kristu Jayanti College meets the full financial need of every admitted undergrad who qualifies for assistance.
                </span>
                <p class="adm_p">
                    Nearly 80% of undergrads receive some form of financial assistance. Generally, tuition is covered
                    for families with incomes below Rs 150,000.
                </p>
            </div>
        </div>
        <span id="admission-more" class="more"><a href="admission.aspx">More about admission</a></span>
    </div>

    <!-- QUICK FACTS STARTS -->

    <div id="fact">
        <span class="head">Quick facts about College</span>
        <div id="facts">
            <div id="stu_cnt" class="count">
                <!-- student counts -->
                <span class="cnt_head">Student Count</span>
                <span class="cnt-value">10,000</span>
            </div>
            <div id="fac_cnt" class="count">
                <!-- Faculty counts -->
                <span class="cnt_head">Faculty Count</span>
                <span class="cnt-value">258</span>
            </div>
            <div id="lab_cnt" class="count">
                <!-- Computer Lab counts -->
                <span class="cnt_head">Lab Count</span>
                <span class="cnt-value">44</span>
            </div>
            <div id="lib_cnt" class="count">
                <!-- Library counts -->
                <span class="cnt_head">Library Count</span>
                <span class="cnt-value">3</span>
            </div>
            <div id="bld_cnt" class="count">
                <!-- Buildings counts -->
                <span class="cnt_head">Buildings Count</span>
                <span class="cnt-value">3</span>
            </div>
        </div>
    </div>

    <!-- FACT ENDS -->

    <!-- FOOTER BEGINS -->
    <div id="foot">
        <div class="foot_divs">
            <span class="foot_head">Kristu Jayanti College</span>
            <span class="foot_add body">Bengaluru, Karnataka</span>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.6435209667916!2d77.64028391482297!3d13.05834814079901!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae17578c79da7d%3A0xe96dcd8e2b982f8e!2sKristu%20Jayanti%20College%2C%20Autonomous!5e0!3m2!1sen!2sin!4v1661062854753!5m2!1sen!2sin" width="400" height="300" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="foot_divs">
            <span class="foot_head">Quick Links</span>
            <ul>
                <li id="foot_links"><a href="index.aspx" class="foot_link">Home</a></li>
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
            <span class="contact_body"><i class="fa-solid fa-envelope"></i><a href="mailto:info@kristujayanti.com">info@kristujayanti.com</a></span>
        </div>
    </div>

</body>
<script>
    // Get the video
    var video = document.getElementById("myVideo");


    // Pause and play the video, and change the button text
    function pause() {
        if (video.paused) {
            video.play();
        } else {
            video.pause();
        }
    }

    // let stu_cnts=setInterval(updated);
    // let fac_cnts=setInterval(updated);
    // let bld_cnts=setInterval(updated);
    // let lab_cnts=setInterval(updated);
    // let lib_cnts=setInterval(updated);
    // let upto=0;

    // function updated(){
    //     var students= document.getElementById("stu_cnt");
    //     var faculty= document.getElementById("fac_cnt");
    //     var buildings= document.getElementById("bld_cnt");
    //     var labs= document.getElementById("lab_cnt");
    //     var library= document.getElementById("lib_cnt");
    //     stu_cnt.inneraspx=++upto;
    //     if(upto===10000)
    //     {
    //         clearInterval(stu_cnts);
    //         upto=0
    //     }
    //     fac_cnt.inneraspx=++upto;
    //     if(upto===258)
    //     {
    //         clearInterval(fac_cnts);
    //     }
    //     if(upto===44)
    //     {
    //         clearInterval(lab_cnts);
    //     }
    //     if(upto===3)
    //     {
    //         clearInterval(lib_cnts);
    //     }
    //     if(upto===3)
    //     {
    //         clearInterval(bld_cnts);
    //     }
    // }


</script>

</html>
