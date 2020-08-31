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
           .formc {
  display: block;
  width: 100%;
  height: 40px;
  padding: 6px 12px;
  font-size: 16px;
  line-height: 1.42857143;
  color: black;
  background-color: rgba(80,54,64,0);
  background-image: none;
  border: 0px solid #ccc;
  border-bottom: 1px solid yellowgreen;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 0px 2px rgba(0, 0, 0, .9);
          box-shadow: inset 0 0px 2px rgba(0, 0, 0, .9);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
            .page-header{
                margin: 32px 10px 20px;
                border-bottom: none;
                opacity: 0.5;
                text-transform: uppercase;
            }
            .breadcrumb{
                height:90px;
                width: 100%;
                padding: 0px 70px 30px 40px;
                background-color: lightblue;
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
            <ol class="breadcrumb">
               <li ><a href="./ProfileDetails.jsp" class="active"><i class="fa fa-user"></i> PROFILE</a>
                    <a href="./Orders.jsp" class="menu"><i class="fa fa-motorcycle"></i>UPCOMING RIDES</a>
                    <a href="./BookingTopUp.jsp" class="menu"><i class="fa fa-plus-circle"></i>TOPUP</a>
                    <a href="./UserBookingHistory.jsp" class="menu"><i class="fa fa-history"></i>HISTORY</a></li>
            </ol>
        </div>

            
        <div class="shop-item">
            <div class="container">
                <div class="row row--main-shop">
                    <div class="col-md-2 col-sm-5 col-xs-6">
                        <aside class="shop-aside">
                            <div class="gallery__big">
                                    <img class="img-responsive" src="<%= u.getProfile_pic()%>" alt="product" />
                                    
                                    <form action="./UserProfilePic" method="post" enctype="multipart/form-data">
                                        <button onclick="document.getElementById('file').click();return false;">change profile pic</button>
                                        <input type="file" id="file" style="visibility:hidden" value="<%= u.getProfile_pic()%>" name="profile_pic">
                                    <button type="submit" class="btn btn-primary">Upload</button>
                                    </form>
                                    
                                    
                                    
                                </div></center>
                                <%--<div class="shop-aside__block ">
                                    <h2 class="shop-title"></span></h2>

                                </div>--%>
                        </aside>
                    </div>
                        <div class="col-md-0 col-md-offset-4"> 
                            <h2><u><b>Update Your Details Here:</b></u></h2><br>
                            
                            <form action="./UpdateUserData" method="GET" id="contactForm" class="comment-form">
                                       <div class="col-xs-12 col-sm-6 col-md-6">
                                     <div> 
                                         <input type="hidden" class="formc" name="id" value="<%=u.getId()%>" id="user-name" />
                                    </div>
                                    <div class="comment-form__input">
                                         <h5>Username</h5>
                                         <input type="text" class="formc" name="name" value="<%=u.getName()%>" id="user-name" />
                                    </div>
                                    <div class="comment-form__input">
                                         <h5>Password</h5>
                                         <input type="text" class="formc" name="password" value="<%=u.getPassword()%>" id="user-name" />
                                    </div>
                                   </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="comment-form__input">
                                        <h5>Mobile no.</h5>
                                           <input type="text" class="formc" name="mobile" value="<%=u.getMobile_no()%>" id="user-name"  />
                                    </div>
                                   </div>
                                    <div class="col-md-9 col-md-offset-0">
                                   <button type="submit" value="submit" class="btn button button--red triangle triangle--12">Update</button>
                                    </div>
                                </form>
                                    
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



                                
                           
 
 
  
  