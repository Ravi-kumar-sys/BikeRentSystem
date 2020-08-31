<%-- 
    Document   : UpdatebookingData
    Created on : Apr 10, 2019, 11:45:40 PM
    Author     : Ravi kumar
--%>
<%@page import="com.wst.bean.BookingDetails"%>
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
</style>
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

		<section class="status status--shop dark-bg dark-bg--shop">
			<div class="container wow slideInRight" data-wow-delay="0.7s" data-wow-duration="1.5s">
				<div class="breadcumb">
					<a href="home.html" class="breadcumb__page no-decoration">Home</a>
					<span class="breadcumb__del no-decoration">&raquo;</span>
					<a href="shop.html" class="breadcumb__page no-decoration">Store</a>
					<span class="breadcumb__del no-decoration">&raquo;</span>
					<a href="item.html" class="breadcumb__page no-decoration">Bike Book</a>
				</div>
				<h2 class="title title--page"><span class="title__bold">Changes</span>In Booking</h2>
			</div>
		</section><!--status-->

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
                                                     <%-- 
                                                         BikeImpl bikeimpl = new BikeImpl(); 
                                     Bike b3 = bikeimpl.getDataByBikeId(Integer.parseInt(request.getParameter("bike_id")));
                                                  %>       
                                                                
                                                  <h4><u>YOU ARE BOOKED</u></h4>
                                                                     <h2><%=b3.getBike_name() %></h2><br><br>
                                                                                <div class="gallery__big">
											<ul class="js-gall-slider enable-bx-slider" data-auto="true" data-auto-hover="true" data-mode="horizontal" data-pager="true" data-pager-custom=".js-gall-pager" data-prev-selector="null" data-next-selector="null">
												<li><img class="img-responsive" src="<%=b3.getBike_img() %>" alt="product" /></li>	
											</ul>
										</div>--%>
							<div class="shop-aside__block wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1.5s">
								<h2 class="shop-title">List Of Bikes<span class="line line--title line--shop"><span class="line__first"></span><span class="line__second"></span></span></h2>
								<ul class="triangle-list triangle-list--shop">
                                                              <%
                                                                    try{
                                                        ArrayList<Bike> al1=null;
                                                       BikeImpl impl=new BikeImpl();
       
                                                        al1=impl.getAllBikeData();
   
                                                        for(Bike b2 : al1)
                                                         {  %>
                                                         <li class="triangle triangle-list__one"><a class="no-decoration" href="./BookingDetails.jsp?bike_id=<%=b2.getBike_id()%>"><%= b2.getBike_name() %></a></li>
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
                                                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">Honda Shine</a></li>--%><% }}catch(Exception e){} %>
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
							</div>
							<div class="shop-aside__block wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1.5s">
								<h2 class="shop-title">FEATURED PRODUCTS<span class="line line--title line--shop"><span class="line__first"></span><span class="line__second"></span></span></h2>
								<div class="shop-aside__featured">
									<div class="shop-aside__product clearfix">
										<div class="pull-right">
											<img src="media/featured-products/product1.jpg" alt='product'/>
										</div>
										<div class="shop-aside__desc">
											<h4><a class="no-decoration" href="item.html">C3 Pro Helmet</a></h4>
											<div class="item-price">$799.00</div>
										</div>
									</div>
									<div class="shop-aside__product clearfix">
										<div class="pull-right">
											<img src="media/featured-products/product2.jpg" alt='product'/>
										</div>
										<div class="shop-aside__desc">
											<h4><a class="no-decoration" href="item.html">Scorpion SGS Gloves</a></h4>
											<div class="item-price">$79.95</div>
										</div>
									</div>
									<div class="shop-aside__product clearfix">
										<div class="pull-right">
											<img src="media/featured-products/product3.jpg" alt='product'/>
										</div>
										<div class="shop-aside__desc">
											<h4><a class="no-decoration" href="item.html">Sports Leather Jacket</a></h4>
											<div class="item-price">$439.95</div>
										</div>
									</div>
								</div>
							</div>--%>
						</aside>
					</div>
                                   
                                                <%
                                                    Booking b=new Booking();
                                                    BookingDetails bd=new BookingDetails();


                                                %>
                                                
                                                
		            
          <section class="contacts">
            <div class="container" >
                <div class="row" >
                    <div class="contacts-find" >
                        <div class="col-md-8 col-md-offset-1">
                            <div class="contacts-form">
                                <h1 style="font-size:150%; color:black" class="blog-title">Update Your Details Here</h1>
                                <div id="success"></div>

                                <form action="./UpdateBooking" method="GET" id="contactForm" class="comment-form" onsubmit="if(document.getElementById('agree').checked) { return true; } else { alert('Please indicate that you have read and agree to the Terms and Conditions and Privacy Policy'); return false; }">
                                 
                                    <div class="comment-form__input">

                                                    <input type="hidden" value="<%=b.getBooking_bike_id()%>" class="formc" name="bike_id">
                                                </div> 
                                                
                                       <div class="col-xs-12 col-sm-6 col-md-6">
                                        <div class="col-xs-12 col-sm-6 col-md-7">
                                            <div class="comment-form__input">
                                                <h5>Pickup Date:</h5>
                                                <input type="date" value="<%=b.getBooking_pickup_date() %>" class="formc" name="pickupdate">
                                            </div>
                                        </div>
                                            <div class="col-xs-6 col-sm-6 col-md-5">
                                            <div class="comment-form__input">
                                                <h5>Pickup Time:</h5>
                                            <select name="pickuptime" value="<%= b.getBooking_pickup_time()%>" class="formc">
                                            <option value="9:00">9:00AM</option>
                                            <option value="10:00">10:00AM</option>
                                            <option value="11:00">11:00AM</option>
                                            <option value="12:00">12:00AM</option>
                                            <option value="13:00">1:00PM</option>
                                            <option value="14:00">2:00PM</option>
                                            <option value="15:00">3:00PM</option>
                                            <option value="16:00">4:00PM</option>
                                            <option value="17:00">5:00PM</option>
                                            <option value="18:00">6:00PM</option>
                                            <option value="19:00">7:00PM</option>
                                            <option value="20:00">8:00PM</option>
                                            <option value="21:00">9:00PM</option>
                                            </select>
                                            </div>
                                        </div>
                                        </div>
                                        
                                             <div class="col-xs-12 col-sm-6 col-md-6">    
                                            <div class="col-xs-12 col-sm-6 col-md-7">
                                            <div class="comment-form__input">
                                                <h5>Drop Date:</h5>
                                                <input type="date" value="<%=b.getBooking_drop_date()%>" class="formc" name="dropdate">
                                            </div>
                                        </div>
                                                 <div class="col-xs-12 col-sm-6 col-md-5">
                                            <div class="comment-form__input">
                                                <h5>Drop time:</h5>
                                               <select name="droptime" value="<%= b.getBooking_drop_time()%>" class="formc">
                                            <option value="9:00">9:00AM</option>
                                            <option value="10:00">10:00AM</option>
                                            <option value="11:00">11:00AM</option>
                                            <option value="12:00">12:00AM</option>
                                            <option value="13:00">1:00PM</option>
                                            <option value="14:00">2:00PM</option>
                                            <option value="15:00">3:00PM</option>
                                            <option value="16:00">4:00PM</option>
                                            <option value="17:00">5:00PM</option>
                                            <option value="18:00">6:00PM</option>
                                            <option value="19:00">7:00PM</option>
                                            <option value="20:00">8:00PM</option>
                                            <option value="21:00">9:00PM</option>
                                            </select>
                                            </div>
                                        </div>
                                             </div>
                                       <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="comment-form__input">
                                        <h5>Driving License No:</h5>
                                        <input type= "text" class="formc" name="bookingd_dlno" value="<%=bd.getBookingd_dlno()%>" id="user-email"  />
                                    </div>
                                  </div>
                                   
                                    <div class="col-md-9 col-md-offset-0">
                                   <button type="submit" value="submit" class="btn button button--red triangle triangle--12">Update</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div >
        </section>
		</div><!--shop-item-->
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
