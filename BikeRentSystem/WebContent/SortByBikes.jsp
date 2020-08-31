<%@page import="com.wst.model.TariffImpl"%>
<%@page import="com.wst.bean.Tariff"%>
<%@page import="com.wst.bean.Bike"%>
<%@page import="com.wst.model.BikeImpl"%>
<%@page import="java.util.ArrayList"%>
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
              <%-- <section class="status dark-bg dark-bg--status">
			<div class="container wow slideInRight" data-wow-delay="0.7s" data-wow-duration="1.5s">
				<div class="breadcumb">
					<a href="home.html" class="breadcumb__page no-decoration">Home</a>
					<span class="breadcumb__del no-decoration">&raquo;</span>
					<a href="blog.html" class="breadcumb__page no-decoration">Booking</a>
				</div>
				<h2 class="title title--page"><span class="title__bold"></span> Booking</h2>
			</div>
		</section>
		<!--status-->--%>

		<section class="shop">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1 col-xs-12">
						<div class="about-us about-us--shop ">
							<h1>Store offers wide range of
								<span>Motorcycles</span> on rent at cheap rates!</h1>
						</div>
					</div>
				</div>
				<div class="row row--main-shop">
					<div class="col-lg-3 col-md-4 col-sm-5 col-xs-6">
						<aside class="shop-aside">
							<form class=" wow fadeInUp" action="./SearchBikes.jsp" method="get">
								<div class="relative-pos shop-aside__search">
									<input type="text" name="search" placeholder="Search..." />
									<button type="submit"><span class="fa fa-search"></span></button>
								</div>
							</form>
							<div class="shop-aside__block ">
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
                                                                    
                                                                    
                                                                <%--<li class="triangle triangle-list__one"><a class="no-decoration" href="#">Royal Enfield Classic350</a></li>
                                                                        <li class="triangle triangle-list__one"><a class="no-decoration" href="#">RoyalEnfield Himalayan</a></li>
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
                                                </aside>
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
							</div>
						</aside>--%>
					</div>
                                                <%
                                                   String s= request.getParameter("bike_category");
                                                    %>
                                       
					<div class="col-lg-9 col-md-8 col-sm-7 col-xs-6">
						<div class="shop">
							<header class="shop-main__head clearfix ">
                                                            <h2 class="pull-left">Sort by <b><%= s %></b> Types</h2>
                                                                <a href="./BikesCategory.jsp" class="button button--grey button--main btn button--active pull-right">Sort by</a>
							</header>
							<div class="items">
						           <div class="row">
						                   
                                                                <% 
                                                     try{
           
                                                                        
                                                        ArrayList<Bike> al=null;
                                                       BikeImpl impl1=new BikeImpl();
       
                                                        al=impl1.getDataByBike_category(request.getParameter("bike_category"));
                                for(Bike b : al)
                                                         {  
                                                                
                                                                System.out.println(b);
                                                                %>
                                                               <div class="col-lg-4 col-sm-6 col-xs-12 ">
								 	
                                                                    <div class="item-cell js-cell equal-height-item">
									
                                                                        <div class="item-cell__top">
								            <div class="item-cell__img">
									    
                                                                                <img src="<%= b.getBike_img() %>" class="img-responsive center-block" alt="item"/>
												</div>
												<div class="item-cell__actions">
                                                                                                    <%--<a href="#" class="add-to-cart"><span class="fa fa-shopping-cart"></span></a>--%>
													<a href='./BookingDetails.jsp?bike_id=<%=b.getBike_id()%>' class="see-detail"><span class="fa fa-search-plus"></span></a>
												</div>
											</div>
                                                      
                                                                               
                                                                                    <div class="item-cell__bottom">
												<h1 class="item-title"><a class="no-decoration" href="item.jsp"><%= b.getBike_name() %></a></h1>
                                                                                                <div>
                                                                                                    <center> <h4> <a  style="background-color: skyblue" class="btn button button--red triangle triangle--12" href="./BookingDetails.jsp?bike_id=<%=b.getBike_id()%>" >See Details</a></h4></center>
                                                                                                </div>
												<div class="item-cell__info clearfix">
                                                                                                    <div class="item-price pull-left"></div>
                                                                                                      
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
                                                                                </div>
                                                           <% }}catch(Exception e){} %>
									
                                                                 
                                                                        
		</section><!--shop-->

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