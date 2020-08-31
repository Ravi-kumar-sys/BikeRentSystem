<%-- 
    Document   : UserProfile
    Created on : Apr 13, 2019, 12:02:45 AM
    Author     : Ravi kumar
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.wst.model.UserImpl"%>
<%@page import="com.wst.bean.User"%>
<%@page import="com.wst.bean.Bike"%>
<%@page import="com.wst.model.BikeImpl"%>
<%@page import="com.wst.bean.Booking"%>
<%@page import="com.wst.bean.BookingDetails"%>
<%@page import="com.wst.model.BookingDetailsImpl"%>
<%@page import="com.wst.model.BookingImpl"%>
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
            .active{
                color:black;
                float: left;
                font-size: 25px;
                text-align: center;
                padding: 27px 56px 28px 50px;
                text-decoration: none;
            }
            .page-header{
                margin: 22px 5px 20px;
                border-bottom: none;
                opacity: 0.9;
                text-transform: uppercase;
                background-color: white;
            }
            .breadcrumb{
                height:90px;
                width: 100%;
                padding: 0px 70px 30px 40px;
                background-color: lightsteelblue;
                box-shadow: 1px 2px 2px rgba(0, 0, 0, .2);
            }
            .menu{
                float: left;
                font-size: 25px;
                color: white;
                text-align: center;
                padding: 27px 56px 28px 50px;
                text-decoration: none;
            }
            .menu:hover{
                background-color: lightcoral;
                color:white;
            }
            .breadcrumb a{
                text-decoration: none;
            }
            .shop-aside{
                background-color: black;
                color:coral;
                box-shadow: 11px 7px 5px rgba(0, 0, 0, .5);
                margin-left: -40px;
                margin-right: -30px;
               padding-left: 90px;
               padding-right:200px;
               padding-bottom: 1px;
               padding-top: 1px;
            }
            .table{
                text-transform: uppercase;
                 box-shadow: 1px 3px 3px rgba(0, 0, 0, .5);
                 background-color: lightyellow
            }
            th{
                font-family: arial;
                font-size: 13px;
            }
            .image{
               border:2px solid lightgrey;
               margin-top: 22px;
            }
            
        </style>
       
    </head>
    <body>

        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            if (session.getAttribute("emailid") == null) {
                response.sendRedirect("Login.jsp");
            }
        %>




        <!-- Loader -->
        <div id="page-preloader"><span class="spinner"></span></div>
        <!-- Loader end -->

        <!-- Start Switcher -->

        <!-- End Switcher -->

        <jsp:include page='../commonpages/header.jsp'></jsp:include>
            <!--top-nav-->

        <%
            String s = (String) session.getAttribute("emailid");

            User u = new User();
            UserImpl uimpl = new UserImpl();
            u = uimpl.getDataByEmailId(s);
        %>


        <div class="col-lg-12 col-md-12">
            <h3 class="page-header"><b><i class="icon_profile"></i>hello <%= u.getName()%></b></h3>
            <ul class="breadcrumb">
                <li ><a href="./ProfileDetails.jsp" class="menu"><i class="fa fa-user"></i> PROFILE</a>
                    <a href="" class="active"><i class="fa fa-motorcycle"></i>UPCOMING RIDES</a>
                    <a href="./BookingTopUp.jsp" class="menu"><i class="fa fa-plus-circle"></i>TOPUP</a>
                    <a href="./UserBookingHistory.jsp" class="menu"><i class="fa fa-history"></i>HISTORY</a></li>
            </ul>
        </div>
           
        <div class="shop-item">
            <div class="container">
                <div class="row row--main-shop">
                    

                
            
      
                        <%
                                BookingImpl tdd = new BookingImpl();
                                ArrayList<Booking> alb=null;
                                
                               alb=tdd.getAllBooked(s);
                               for(Booking b:alb)
                               {
                                BookingDetailsImpl td = new BookingDetailsImpl();
                                BookingDetails bd = td.getDataByBookingdId(b.getBooking_details_id());
                                
                                BikeImpl bk = new BikeImpl();
                                Bike bike = bk.getDataByBikeId(b.getBooking_bike_id());
                            %>
                      
                    
                    
                        
                            <div class="image col-lg-3 col-md-offset-1"><br>
                               <img class="img-responsive" src="<%=bike.getBike_img()%>" alt="product" /> 
                            </div>
                            <div class="col-lg-7 col-md-offset-1">
                                <th><h3 style="text-transform:uppercase">Status:<%=b.getBooking_status()%></h3> </th>
                                 <table class="table col-lg-1 col-md-offset-0">
                                     
                            <tr>
                                <th>Booking From:</th>
                                <th><%= b.getBooking_pickup_date()%></th>
                                <th>Booking Till:</th>
                                <th><%= b.getBooking_drop_date()%></th>
                            </tr>
                            <tr>
                                <th>Booking Name:</th>
                                <th><%= bd.getBookingd_name()%></th>
                                 <th>Booking Time</th>
                                <th><%= b.getBookingTime()%></th>
                            <tr>
                                <th>Bike Name</th>
                                <th><%= bike.getBike_name()%></th>
                            </tr>
                        </table> <br>
                            <div class="col-md-0 col-md-offset-0">
                         <a href="./UpdateBookingCancelStatus?booking_id=<%=b.getBooking_id()%>" class="btn btn-primary">Cancel Booking</a></h2>
                         <a href="./UpdateBookingBreakStatus?booking_id=<%=b.getBooking_id()%>" class="btn btn-primary">Break Ride</a></h2>
                        <a href="./BookingDetails.jsp?bike_id=<%=bike.getBike_id()%>" class="btn btn-primary">View Topup Details</a></h2>
                            </div><br><br><br>
                    </div>
                    <% } %>
                </div>
            </div>
        </div> <br><br><br><br><br>
                     
        <jsp:include page='../commonpages/footer.html'></jsp:include>
        <!--home-footer-->
        <!--Main-->   
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
