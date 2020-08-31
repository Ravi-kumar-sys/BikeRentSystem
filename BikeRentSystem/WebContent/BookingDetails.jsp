<%@page import="com.wst.bean.TopUp"%>
<%@page import="com.wst.model.TopUpImpl"%>
<%@page import="com.wst.bean.TariffDetails"%>
<%@page import="com.wst.model.TariffdImpl"%>
<%@page import="com.wst.bean.Bike"%>
<%@page import="com.wst.model.BikeImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wst.model.TariffImpl"%>
<%@page import="com.wst.bean.Tariff"%>
<%@page import="com.wst.bean.Tariff"%>
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
    </head>
    <body>
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
                                <a href="item.html" class="breadcumb__page no-decoration">Bike info</a>
                        </div>
                        <h2 class="title title--page"><span class="title__bold">Bike</span> Details</h2>
                </div>
        </section><!--status-->--%>

        <div class="shop-item">
            <div class="container">
                <div class="row row--main-shop">
                    <div class="col-lg-3 col-md-4 col-sm-5 col-xs-6">
                        <aside class="shop-aside">
                            <form class=" wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1.5s" action="./SearchBikes.jsp" method="get">
                                <div class="relative-pos shop-aside__search">
                                    <input type="text" name="search" placeholder="Search..." />
                                    <button type="submit"><span class="fa fa-search"></span></button>
                                </div>
                            </form>
                            <div class="shop-aside__block ">
                                <h2 class="shop-title">List Of Bikes<span class="line line--title line--shop"><span class="line__first"></span><span class="line__second"></span></span></h2>
                                <ul class="triangle-list triangle-list--shop">
                                    <%
                                        try {
                                            ArrayList<Bike> al1 = null;
                                            BikeImpl impl = new BikeImpl();

                                                                            al1 = impl.getAllBikeData();

                                                                            for (Bike b2 : al1) {%>
                                    <li class="triangle triangle-list__one"><a class="no-decoration" href="./BookingDetails.jsp?bike_id=<%=b2.getBike_id()%>"><%= b2.getBike_name()%></a></li>
                                        <%--<li class="triangle triangle-list__one"><a class="no-decoration" href="#">RoyalEnfield Himalayan</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">KTM Duke390</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Bajaj Avenger</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Hero Splender</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Honda Activa 4G</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Honda Activa 3G</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Bajaj Pulsar 200NS</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Bajaj Pulsar 200RS</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Bajaj Pulsar 150</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">KTM RC390</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Bajaj Pulsar150</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Bajaj Dominor</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Tvs Apache310RR</a></li>
                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Honda Shine</a></li>--%><% }
                                                                            } catch (Exception e) {
                                                                            } %>
                                </ul>
                            </div>
                            <%--<div class="shop-aside__block wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1.5s">
                                            <h2 class="shop-title">Filter by price<span class="line line--title line--shop"><span class="line__first"></span><span class="line__second"></span></span></h2>
                                            <div class="js-shop-slider price-slider"></div>
                                            <div class="clearfix">
                                                    <form action="/" method="post" class="price-num">
                                                            Price:
                                                            $<span class="js-min">100</span> - $<span class="js-max">1000</span>
                                                            <input type="hidden" name="min" class="js-min-input" />
                                                            <input type="hidden" name="min" class="js-max-input" />
                                                    </form>
                                                    <button class="button button--main button--filter button--dark btn pull-right">FILTER</button>
                                            </div>
                                    </div>--%>
                            <div class="shop-aside__block ">
                                <h2 class="shop-title">SORT BY CATEGORIES<span class="line line--title line--shop"><span class="line__first"></span><span class="line__second"></span></span></h2>
                                <div class="shop-aside__featured">
                                    <div class="shop-aside__product clearfix">
                                        <%--<div class="pull-right">
                                                <img src="media/featured-products/product1.jpg" alt='product'/>
                                        </div>--%>
                                        <div class="shop-aside__desc">
                                            <h4><a class="no-decoration" href="SortByBikes.jsp?bike_category=Scooty">SCOOTY BIKES</a></h4>

                                        </div>
                                    </div>
                                    <div class="shop-aside__product clearfix">

                                        <div class="shop-aside__desc">
                                            <h4><a class="no-decoration" href="SortByBikes.jsp?bike_category=Tourer">TOURER MOTORCYCLES</a></h4>

                                        </div>
                                    </div>
                                    <div class="shop-aside__product clearfix">

                                        <div class="shop-aside__desc">
                                            <h4><a class="no-decoration" href="SortByBikes.jsp?bike_category=Adventure">ADVENTURES BIKES</a></h4>

                                        </div>
                                    </div>
                                    <div class="shop-aside__product clearfix">

                                        <div class="shop-aside__desc">
                                            <h4><a class="no-decoration" href="SortByBikes.jsp?bike_category=CityBike">CITY BIKES</a></h4>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>

                    <%
                        BikeImpl bimpl = new BikeImpl();
                        Bike b = bimpl.getDataByBikeId(Integer.parseInt(request.getParameter("bike_id")));

                        TariffImpl timpl = new TariffImpl();
                        Tariff t = timpl.getDataByTariffId(b.getTariff_id());

                        TopUpImpl tpimpl = new TopUpImpl();
                        TopUp tp = tpimpl.getDataByTopUpId(b.getTopup_id());
                    %>      
                    <div class="col-lg-9 col-md-8 col-sm-7 col-xs-6">
                        <div class="shop-item-main">
                            <div class="row">

                                <div class="col-md-6 col-xs-12">
                                    <div class="shop-item-desc">
                                        <header class="shop-item-desc__head ">
                                            <h1><%=b.getBike_name()%></h1>
                                            <%if(b.getStatus()==1)
                                                    {%>
                                                    <h3>Available</h3>
                                                    <%}else{%>
                                                    <h3> Not Available</h3>
                                             <% }%>
                                            <h3></h3>
                                            
                                            <div class="item-price item-price--main">Description</div>
                                        </header>
                                        <div class="shop-item-desc__body ">
                                            <p class="blog-text"><%=b.getBike_description()%></p>
                                            <% if(b.getStatus()==1){ %>
                                            <a href='./BookingForm.jsp?bike_id=<%=b.getBike_id()%>' class="btn button button--red triangle triangle--12">Book Now</a>
                                             <% }else{%>
                                            <a href="" class="btn button button--red triangle triangle--12" style="background-color:lightcyan;color:lightgrey">Book Now</a>
                                            <%}%>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="gallery wow ">
                                        <div class="gallery__big">
                                            <ul class="js-gall-slider enable-bx-slider" data-auto="true" data-auto-hover="true" data-mode="horizontal" data-pager="true" data-pager-custom=".js-gall-pager" data-prev-selector="null" data-next-selector="null">
                                                <li><img class="img-responsive" src="<%=b.getBike_img()%>" alt="product" /></li>

                                            </ul>
                                        </div>
                                        <%--<div class="gallery__small js-gall-pager">
                                                    <a data-slide-index="0" href=""><img src="<%=b.getBike_img() %>" alt="product" /></a>
                                                    <a data-slide-index="1" href=""><img src="<%=b.getBike_img() %>" alt="product" /></a>
                                            </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <style>
                            .aside-tabs--item{
                                -moz-box-shadow: 1px 2px 4px rgba(0, 0, 0,0.5);
                                -webkit-box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
                                box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
                                padding: 10px;
                                background: white;
                            }
                        </style>

                        <div class="aside-tabs aside-tabs--about aside-tabs--item ">
                            <div class="aside-tabs__links">
                                <a href="#" class="no-decoration aside-tabs__active-link js-tab-link" data-for="#trf">TARIFF</a>
                                <a href="#" class="no-decoration js-tab-link" data-for="#rev">TOPUP</a>
                                <a href="#" class="no-decoration js-tab-link" data-for="#spec">SPECIFICATIONS</a>
                                <a href="#" class="no-decoration js-tab-link" data-for="#tc">TERMS & CONDITIONS</a>
                            </div>
                            <div class="aside-tabs__blocks about-tab js-tab-block" id="trf">
                                <p><style>
                                    table {
                                        font-family: arial, sans-serif;
                                        border-collapse: collapse;
                                        width: 100%;
                                        background-color: white;
                                    }
                                    td, th {
                                        border: 1px solid #dddddd;
                                        text-align: left;
                                        padding: 10px;
                                    }
                                </style>
                                <table>       
                                    <tr>
                                        <th>Duration</th>
                                        <th>Tariff</th>
                                        <th>Ride Limit</th>
                                        <th>After Limit</th>
                                    </tr>
                                    <%
                                        try {
                                            ArrayList<TariffDetails> al2 = null;
                                            TariffdImpl impl = new TariffdImpl();

                                            al2 = impl.getAllTariffdDataByTarrifId(t.getTariff_id());

                                                                        for (TariffDetails td : al2) {%>
                                    <tr>
                                        <td><%=td.getTd_duration()%> hrs</td>
                                        <td>Rs.<%=td.getTd_tariff_amount()%> / hrs </td>
                                        <td><%=td.getTd_rideLimit()%> KM</td>
                                        <td>Rs.<%=td.getTd_afterLimit_amount()%> per Hour(Up to 10KM)<br>
                                            If you ride more than 10KM
                                            then Rs. <%=td.getTd_afterLimit_unit_charge()%> Per KM</td>
                                    </tr>
                                    <% }
                                                                    } catch (Exception e) {
                                                                    }%>
                                </table>

                                </p>
                            </div>

                            <div class="aside-tabs__blocks about-tab js-tab-block" id="rev">
                                <p>
                                <style>
                                    .topup {
                                        font-family: arial, sans-serif;
                                        border-collapse: collapse;
                                        width: 80%;
                                        background-color: white;
                                    }
                                    td, th {
                                        border: 1px solid #dddddd;
                                        text-align: left;
                                        padding: 10px;
                                    }
                                </style>
                                <h4>TopUp for Extra KM's</h4>
                                <table class="topup">

                                    <tr>
                                        <th>50 KM</th>
                                        <td>Rs. <%= tp.getTopup_Amount_50km()%></td>
                                    </tr>
                                    <tr>
                                        <th>100 KM</th>                               
                                        <td>Rs. <%= tp.getTopup_Amount_100km()%></td>
                                    </tr>
                                    <tr>
                                        <th>150 KM</th>                           
                                        <td>Rs. <%= tp.getTopup_Amount_150km()%></td>
                                    </tr>
                                    <tr>
                                        <th>200 KM</th>
                                        <td>Rs. <%= tp.getTopup_Amount_200km()%></td>
                                    </tr>
                                    <tr>
                                        <th>250KM</th>
                                        <td>Rs. <%= tp.getTopup_Amount_250km()%></td>
                                    </tr>
                                    <tr>
                                        <th>300 KM</th>
                                        <td>Rs. <%= tp.getTopup_Amount_300km()%></td>
                                    </tr>
                                </table>
                                </p>
                            </div>

                            <div class="aside-tabs__blocks about-tab js-tab-block" id="spec">
                                <p>
                                <table class="topup">
                                    <tr>
                                        <th>Bike Name</th>
                                        <th><%= b.getBike_name()%></th>
                                    </tr>

                                    <tr>
                                        <th>Bike Category</th>
                                        <th><%= b.getBike_category()%></th>
                                    </tr>
                                    <tr>
                                        <th>Bike Company</th>
                                        <th><%= b.getBike_company()%></th>
                                    </tr>
                                    <tr>
                                        <th>Bike Model</th>
                                        <th><%= b.getBike_Model()%></th>
                                    </tr>

                                    <tr>
                                        <th>Bike RC RegDate </th>
                                        <th><%= b.getBike_RC_RegDate()%></th>
                                    </tr>
                                    <tr>
                                        <th>Bike RC ExpDate</th>
                                        <th><%= b.getBike_RC_ExpDate()%></th>
                                    </tr>

                                    <tr>
                                        <th>Bike Color</th>
                                        <th><%= b.getBike_color()%></th>
                                    </tr>
                                    <tr>
                                        <th>Selfstart</th>
                                        <th><%= b.getSelfstart()%></th>
                                    </tr>
                                    <tr>
                                        <th>Bike Engin CC</th>
                                        <th><%= b.getBike_Engin_CC()%></th>
                                    </tr>
                                </table>    
                                </p>
                            </div>

                            <div class="aside-tabs__blocks about-tab js-tab-block" id="tc">
                                <p style="background-color:white">
                                    1.Rider has to deposit refundable<b>security deposits</b>seperately,varies from Rs.1000-5000. <br>   
                                    2.Advance booking will be accepted by depositing <b>1 day rent,and it is non refundable if rider want to cancel the ride</b><br>
                                    3.Advance booking will be applicable from morning <b>10AM to 10Am next day.</b><br>
                                    4.Bikers Brotherhood services reserved rights to cancel the ride with genuine reasons,<b>100% amount will be refund</b><br>
                                    5.<b>Top Up tariff for extra KMs</b> are available,you can buy after speaking with our facilitation Manager.<br>
                                    6.For better options share your <b>detailed travel plan</b> with our tour planning Manager.<br>
                                    7.Please read <b>"Rider Agreement"</b> and <b>"Terms and Conditions"</b> carefully.<br>
                                    8.For outstation travel charge of <b>Rs.200 per fleet per day</b> is applicable.<br>
                                    9.1 Helmet per fleet will be provided by us,extra helmet will be charged <b>Rs.50 per helmet.</b><br>
                                    10.Fuel is not included in above tariff.<br>
                                    11.Rider will be responsible for any kind of damages,accidents,Loss of fleet and traffic challans.

                                </p> 
                            </div>
                        </div>                 




                        <div>
                            <h2 class="shop-title wow ">RELATED PRODUCTS<span class="line line--title line--shop"><span class="line__first"></span><span class="line__second"></span></span></h2>
                            <div class="row row--items">
                                <%
                                    try {

                                        ArrayList<Bike> al = null;
                                        BikeImpl impl1 = new BikeImpl();

                                                                   al=impl1.getDataByBike_category(b.getBike_category());

                                                                    for (Bike b1 : al) {%>
                                <div class="col-lg-4 col-sm-6 col-xs-12 ">
                                    <div class="item-cell js-cell equal-height-item">
                                        <div class="item-cell__top">
                                            <div class="item-cell__img">
                                                <img src="<%= b1.getBike_img()%>" class="img-responsive center-block" alt="item"/>
                                            </div>
                                            <div class="item-cell__actions">

                                                <a href="#" class="see-detail"><span class="fa fa-search-plus"></span></a>
                                            </div>
                                        </div>
                                        <div class="item-cell__bottom">
                                            <h1 class="item-title"><a class="no-decoration" href="item.html"><%= b1.getBike_name()%></a></h1>
                                            <div class="item-cell__info clearfix">
                                                <div>
                                                    <center> <h4> <a  style="background-color: skyblue" class="btn button button--red triangle triangle--12" href="./BookingDetails.jsp?bike_id=<%=b.getBike_id()%>" >See Details</a></h4></center>
                                                </div>
                                                <%--<div class="stars pull-right">
                                                            <span class="star star--none"></span>
                                                            <span class="star"></span>
                                                            <span class="star"></span>
                                                            <span class="star"></span>
                                                            <span class="star"></span>
                                                    </div>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div><% }
                                                                    } catch (Exception e) {
                                                                    }%>
                            </div>	
                        </div>
                    </div>
                </div>
            </div>
        </div><!--shop-item-->

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