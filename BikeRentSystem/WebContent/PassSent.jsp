<%-- 
    Document   : Updated
    Created on : Apr 2, 2019, 11:11:48 AM
    Author     : Ravi kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Bikers Brotherhood</title>
        <link rel="icon" type="image/x-icon" href="media/favicon.png" />

        <link href="css/master.css" rel="stylesheet">

        <!-- SWITCHER -->
        <link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color1.css" title="color1" media="all" data-default-color="true"  />
        <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color2.css" title="color2" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color3.css" title="color3" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color4.css" title="color4" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color5.css" title="color5" media="all" />

        <style>
            .box{
                box-shadow: 1px 7px 7px rgba(0, 0, 0, .2);
                background-color: lightyellow;
                margin-left: 400px;
                margin-right: 400px;
                margin-top: 60px;
            }
            
        </style> 
    </head>
    <body>
         <jsp:include page='../commonpages/header.jsp'></jsp:include>
         <div class="box col-lg-offset-2"><br><br><br><br><br><br>
    <center><h4>Your password sent on your Email id...</h4><br><br><br><br>
        
        <a href="./Login.jsp" class="btn btn-primary">Goto Login Page</a></h2>
        <% 
        String emailid=(String)session.getAttribute("to");
        System.out.println(emailid);
        %>
        <a href="./SendEmail?email=<%=emailid%>" class="btn btn-primary">Resend</a></h2>
        </center><br><br>
         </div><br><br><br><br><br><br><br><br><br><br>
     <jsp:include page='../commonpages/footer.html'></jsp:include>
     
     <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <!--Counter-->
        <script src="assets/rendro-easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/jquery.easypiechart.min.js"></script>
        <script src="js/classie.js"></script>
        <!--Switcher-->
        <script src="assets/switcher/js/switcher.js"></script>		
        <!--Owl Carousel-->
        <script src="assets/owl-carousel/owl.carousel.min.js"></script>		
        <!--bxSlider-->
        <script src="assets/bxslider/jquery.bxslider.min.js"></script>		
        <!-- jQuery UI Slider -->
        <script src="assets/slider/jquery.ui-slider.js"></script>		
        <!--Isotope-->
        <script src="assets/isotope/isotope.js"></script>
        <!--Slider-->
        <script src="assets/slider/jquery.ui-slider.js"></script>		
        <!--Fancybox-->
        <script src="assets/fancybox/jquery.fancybox.pack.js"></script>
        <!--Theme-->
        <script src="js/jquery.smooth-scroll.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.placeholder.min.js"></script>
        <script src="js/theme.js"></script>
    </body>
</html>
