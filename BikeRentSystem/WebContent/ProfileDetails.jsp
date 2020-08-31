<%-- 
    Document   : ProfileDetails
    Created on : Apr 17, 2019, 5:01:48 PM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.model.UserImpl"%>
<%@page import="com.wst.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Bikers Brotherhood</title>
        <link rel="icon" type="image/x-icon" href="media/favicon.png" />
    <a href="Registration.jsp"></a>

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
               background-color: white;
               margin-left: -90px;
               margin-right: -70px;
               padding-left: 0px;
               padding-right: 100px;
               padding-bottom: 0px;
            }
            .img-responsive{
                border: 4px solid black;
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
            <h3 class="page-header"><b>hello <%= u.getName()%></b></h3>
           
            <ol class="breadcrumb">
                <li ><a href="" class="active"><i class="fa fa-user"></i> PROFILE</a>
                    <a href="./Orders.jsp" class="menu"><i class="fa fa-motorcycle"></i>UPCOMING RIDES</a>
                    <a href="./BookingTopUp.jsp" class="menu"><i class="fa fa-plus-circle"></i>TOPUP</a>
                    <a href="./UserBookingHistory.jsp" class="menu"><i class="fa fa-history"></i>HISTORY</a></li>
            </ol>
       
        </div>

            
        <div class="shop-item">
            <div class="container">
                <div class="row row--main-shop">
                    <div class="col-md-1 col-sm-5 col-xs-6">
                        <aside class="shop-aside">
                            <div class="gallery__big">
                                    <img class="img-responsive" src="<%= u.getProfile_pic()%>" alt="product" />
                                    
                                    <form action="./UserProfilePic" method="post" enctype="multipart/form-data">
                                        <button onclick="document.getElementById('file').click();return false;"><i class="fa fa-pencil"></i>change profile pic</button>
                                        <input type="file" id="file" style="visibility:hidden" value="<%= u.getProfile_pic()%>" name="profile_pic">
                                        <center><button type="submit" class="btn btn-primary">Upload</button></center>
                                    </form>
                                    
                                    
                                    
                                </div></center>
                                <%--<div class="shop-aside__block ">
                                    <h2 class="shop-title"></span></h2>

                                </div>--%>
                        </aside>
                    </div>
                        <div class=" box col-md-4 col-md-offset-1"> 
                            <h4><i class="fa fa-envelope info"></i>  <%= u.getEmailid()%></h4>
                            <h4><i class="fa fa-phone info"></i>  <%= u.getMobile_no()%></h4><br>
                            <h3><i class="fa fa-cog fa-fw info"></i>Setting</h3>
                            <a href="./UpdateUserById.jsp"><i class="fa fa-pencil info"></i>Change UserName</a><br>
                            <a href="./UpdateUserById.jsp"><i class="fa fa-pencil info"></i>Change Password</a><br>
                            
                            <a href="./UpdateUserById.jsp"><i class="fa fa-pencil info"></i>Change Mobile no.</a><br>
                            
                        </div>
      
                </div>
            </div>
        </div>
              
                            
       
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

