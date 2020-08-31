<%-- 
    Document   : BookingForm
    Created on : Apr 9, 2019, 3:57:04 AM
    Author     : Ravi kumar
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.wst.bean.BookingDetails"%>
<%@page import="com.wst.model.BookingDetailsImpl"%>
<%@page import="com.wst.model.BookingImpl"%>
<%@page import="com.wst.bean.Booking"%>
<%@page import="com.wst.model.TopUpImpl"%>
<%@page import="com.wst.bean.TopUp"%>
<%@page import="com.wst.bean.TariffDetails"%>
<%@page import="com.wst.model.TariffdImpl"%>
<%@page import="com.wst.bean.Tariff"%>
<%@page import="com.wst.model.TariffImpl"%>
<%@page import="com.wst.model.BikeImpl"%>
<%@page import="com.wst.bean.Bike"%>
<%@page import="java.util.ArrayList"%>
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

        <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
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

            .table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
                position: relative;

            }
            td, th {
                border: 1px solid #dddddd;
                text-align: center;
                padding: 4px; 
            }
            .form{
                border-bottom-left-radius: 30px;
                border-top-right-radius: 30px;
                box-shadow: 1px 3px 3px rgba(0, 0, 0, .4);
                background-color: lightyellow;
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

 <%
                    String email=(String)session.getAttribute("emailid");
                              
                              
                                            Booking b=new Booking();
        BookingImpl bimpl=new BookingImpl();
        b= bimpl.getcurrentBooking(email);
        
        
        BookingDetailsImpl td = new BookingDetailsImpl();
                                BookingDetails bd = td.getDataByBookingdId(b.getBooking_details_id());
                                
                                BikeImpl bk = new BikeImpl();
                                Bike bike = bk.getDataByBikeId(b.getBooking_bike_id());  
                                %>  
        <!-- Loader -->
        <div id="page-preloader"><span class="spinner"></span></div>
        <!-- Loader end -->

        <!-- Start Switcher -->
        <div class="switcher-wrapper">	
            <div class="demo_changer">
                <div class="demo-icon customBgColor"><i class="fa fa-cog fa-spin fa-2x"></i></div>
                <div class="form_holder">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="predefined_styles">
                                <div class="skin-theme-switcher">
                                    <h4>Color</h4>
                                    <a href="#" data-switchcolor="color1" class="styleswitch" style="background-color:#ce0000;"> </a>
                                    <a href="#" data-switchcolor="color2" class="styleswitch" style="background-color:#4fb0fd;"> </a>
                                    <a href="#" data-switchcolor="color3" class="styleswitch" style="background-color:#ffc73c;"> </a>							
                                    <a href="#" data-switchcolor="color4" class="styleswitch" style="background-color:#ff8300;"> </a>
                                    <a href="#" data-switchcolor="color5" class="styleswitch" style="background-color:#02cc8b;"> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Switcher -->

        <jsp:include page='../commonpages/header.jsp'></jsp:include>
            <!--top-nav-->

        <%--<section class="status status--shop dark-bg dark-bg--shop">
                <div class="container wow slideInRight" data-wow-delay="0.7s" data-wow-duration="1.5s">
                        <div class="breadcumb">
                                <a href="home.html" class="breadcumb__page no-decoration">Home</a>
                                <span class="breadcumb__del no-decoration">&raquo;</span>
                                <a href="shop.html" class="breadcumb__page no-decoration">Store</a>
                                <span class="breadcumb__del no-decoration">&raquo;</span>
                                <a href="item.html" class="breadcumb__page no-decoration">Bike Book</a>
                        </div>
                        <h2 class="title title--page"><span class="title__bold">Bike</span> Booking Form</h2>
                </div>
        </section><!--status-->--%>

        <div class="shop-item">
            <div class="container">
                <div class="row row--main-shop">
                    <div class="col-lg-3 col-md-4 col-sm-5 col-xs-6">
                        <aside class="shop-aside">
                            <form class=" wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1.5s" action="/" method="post">
                                <%--<div class="relative-pos shop-aside__search">
                                        <input type="text" name="search" placeholder="Search..." />
                                        <button type="submit"><span class="fa fa-search"></span></button>
                                </div>--%>
                            </form>
                            <%
                                BikeImpl bikeimpl = new BikeImpl();
                                Bike b3 = bikeimpl.getDataByBikeId(b.getBooking_bike_id());
                            %>       

                            <h4><u>YOU ARE BOOKING</u></h4>
                            <h2><%=b3.getBike_name()%></h2><br><br>
                            <div class="gallery__big">
                                <ul class="js-gall-slider enable-bx-slider" data-auto="true" data-auto-hover="true" data-mode="horizontal" data-pager="true" data-pager-custom=".js-gall-pager" data-prev-selector="null" data-next-selector="null">
                                    <li><img class="img-responsive" src="<%=b3.getBike_img()%>" alt="product" /></li>	
                                </ul>
                            </div>
                            <div class="shop-aside__block ">
                                <h1 class="shop-title">Rental Fee - Tariff</h1>
                                <ul class="triangle-list triangle-list--shop">
                                    <table>       
                                        <tr style="background-color: yellow">
                                            <th>Duration</th>
                                            <th>Tariff</th>
                                            <th>Ride Limit</th>
                                        </tr>
                                        <%
                                            TariffImpl timpl1 = new TariffImpl();
                                            Tariff t1 = timpl1.getDataByTariffId(b3.getTariff_id());
                                            try {
                                                ArrayList<TariffDetails> al2 = null;
                                                TariffdImpl impl1 = new TariffdImpl();

                                                al2 = impl1.getAllTariffdDataByTarrifId(t1.getTariff_id());

                                                for (TariffDetails td1 : al2) {%>
                                        <tr>
                                            <td><%=td1.getTd_duration()%> hrs</td>
                                            <td>Rs.<%=td1.getTd_tariff_amount()%> / hrs </td>
                                            <td><%=td1.getTd_rideLimit()%> KM</td>
                                        </tr>
                                        <% } %>
                                            
                                    </table>
                                </ul>
                            </div>
                        </aside>
                    </div>
  
                                    
                                  

                    <section class="contacts">
                        <div class="container" >
                            <div class="row" >
                                <div class="contacts-find" >
                                    <div class=" form col-md-6 col-md-offset-1">
                                        <div class="contacts-form"><br>
                                            <h1 style="font-size:150%; color:black" class="blog-title"><u>Payment:</u></h1><br>
                                            <div id="success"></div>
                                       
                                            <table class="table table-advance">

                                                <tr>
                                                    <th>Booking Name</th>
                                                    <th><%= bd.getBookingd_name()%></th>
                                                </tr>
                                                <tr>
                                                    <th>Booking pickup date</th>
                                                    <th><%= b.getBooking_pickup_date()%></th>
                                                </tr>
                                                <tr>
                                                    <th>Booking pickup time</th>
                                                    <th><%= b.getBooking_pickup_time()%></th>
                                                </tr>
                                                <tr>
                                                    <th>Booking drop date</th>
                                                    <th><%= b.getBooking_drop_date()%></th>
                                                </tr>
                                                <tr>
                                                    <th>Booking drop time</th>
                                                    <th><%= b.getBooking_drop_time()%></th>
                                                </tr>

                                                <tr>
                                                    <th>Bike name</th>
                                                    <th><%= bike.getBike_name()%></th>
                                                </tr>
                                                <tr>
                                                    <th>Phone no:</th>
                                                    <th><%= bd.getBookingd_phone()%></th>
                                                </tr>
                                            </table><br><br><br>
                                            
                                            <%  
                                                String picdate= b.getBooking_pickup_date();
                                                String pictime= b.getBooking_pickup_time();
                                                String dropdate= b.getBooking_drop_date();
                                                String droptime= b.getBooking_drop_time();
                                                
                                                String dateStart =picdate+" "+pictime ;
                                                String dateStop = dropdate+" "+droptime;
                                                
                                                SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		                                Date d1 = null;
		                                Date d2 = null;

		
			                         d1 = format.parse(dateStart);
			                         d2 = format.parse(dateStop);

                                                long diff = d2.getTime() - d1.getTime(); 
                                                long diffDay = diff / (3600000 * 24);
                                                long diffDayhrs = diff / (3600000 )%24;
                                                
                                                long diffhrs = (diff / (3600000));
                                                long diffhrs9 = (diffDayhrs/9);
                                                long diff9hrs=  ((diff / (3600000 )%24) %9);
                                               
                                                long diffhrs6 = ((diff9hrs/6));
                                                 if((((diff / (3600000 )%24) %9)%6)>0)
                                                 {
                                                     diffhrs6++;
                                                 }
                                               // System.out.println("D1 "+d1);
                                                //System.out.println("D2 "+d2);
                                                                                               
                                               // System.out.println(diffDay);
                                                double  charge24=0;
                                                double charge9=0;
                                                double  charge6=0;
                                                

                                               
                                                TariffDetails td1 =al2.get(0);
                                                if(diffDay>0)
                                                {
                                                    charge24=diffDay* td1.getTd_tariff_amount();
                                                }
                                         
                                                  TariffDetails td2 =al2.get(1);
                                                if(diffhrs9>0)
                                                {
                                                    charge9=diffhrs9*td2.getTd_tariff_amount();
                                                }
                                                
                                               TariffDetails td3 =al2.get(2);
                                                if(diffhrs6>0)
                                                {
                                                    charge6=diffhrs6*td3.getTd_tariff_amount();
                                                }
                                               
                                               
                                            
                                                System.out.println("Total Hrs "+diffhrs );
                                                 System.out.println("---------------------------------------------");
                                                System.out.println("Per Day  Charge 24 * "+diffDay+" = "+charge24);
                                                System.out.println("9 HRS  Charge 9 * "+diffhrs9+" = "+charge9);
                                                System.out.println("6 HRS  Charge 6 * "+diffhrs6+" = "+charge6);
                                                 System.out.println("---------------------------------------------");
                                                System.out.println("Total Charge  of Ride * "+(charge24+charge9+charge6) );
                                                System.out.println("---------------------------------------------");
                                            
                                            session.setAttribute("amount",charge24+charge9+charge6);
                                            %>
                                            
                                            <h4>Total payable amount(inclusive of all taxes):<mark style="background-color:yellow"> Rs.<%= charge24+charge9+charge6 %></mark></h4>
                                                <h6>Notes: 1.The amount are calculated based on tariff plans.</h6>
                                                <h6>2.The minimum six hours tariff plan's amount are added rather than you complete your ride before that.</h6><br><br>
                                                <a href="./PaymentEmail" class="btn button button--red triangle triangle--12">Pay Now</a><br><br><br>
                                        </div>
                                    </div>
                                </div>
                            </div >
                    </section>
                </div><!--shop-item-->
            </div>
        </div>
                                         <%} catch (Exception e) {
                                                e.printStackTrace();
                                            }%> 

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
