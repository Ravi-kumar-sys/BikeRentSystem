<%-- 
    Document   : BikesCategory
    Created on : Apr 13, 2019, 1:22:56 AM
    Author     : Ravi kumar
--%>

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
             
		<!--status-->

		
			
                      <section class="listings">
			<div class="container">
				<header class="tab-header clearfix" >
                                    <h2 class="title title--main "><span class="title__bold">Bikers</span>Brotherhood Bikes Categories<span class="line line--small"><span class="line__first"></span><span class="line__second"></span></span></h2>
					<div class="tab-toggles pull-right js-isotope-btns">
						
						<a href="./Booking.jsp" class="btn button button--red triangle triangle--12" >View All</a>
					</div>
				</header>
				<p class="text text--anons ">There are many diffrent types of bikes we provide for bikers.<br>Because we know how bikers love to ride there selected choice of bikes.</p>
				<div class="row isotope">
					<div class="col-md-4 col-xs-6 isotope-item ">
						<a href="SortByBikes.jsp?bike_category=Scooty" class="listing-anons equal-height-item listing-anons--home triangle triangle--big line-down no-decoration">
							<div class="listing-anons__img">
								<img src="images/backgrounds/scootybikes.jpg" class="img-responsive" alt="bike" />
							</div>
							<div class="listing-anons__title">
								<h4 class="name">SCOOTY BIKES</h4>
							</div>
							<div class="listing-anons__hidden">
								<h3>SCOOTY BIKES</h3>
								<p>Scooty like Honda Activa,Jupitor etc.</p>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-xs-6 isotope-item ">
						<a href="SortByBikes.jsp?bike_category=Tourer" class="listing-anons equal-height-item listing-anons--home triangle triangle--big line-down no-decoration">
							<div class="listing-anons__img">
								<img src="images/backgrounds/tour7.jpg" class="img-responsive" alt="bike" />
							</div>
							<div class="listing-anons__title">
								<h4 class="name">TOURER MOTORCYCLES</h4>
							</div>
							<div class="listing-anons__hidden">
								<h3>TOURER MOTORCYCLES</h3>
								<p>Tourer bikes like Bullet,Himalayan etc</p>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-xs-6 isotope-item ">
						<a href="SortByBikes.jsp?bike_category=Adventure" class="listing-anons equal-height-item listing-anons--home triangle triangle--big line-down no-decoration">
							<div class="listing-anons__img">
								<img src="images/backgrounds/bikess.jpg" class="img-responsive" alt="bike" />
							</div>
							<div class="listing-anons__title">
								<h4 class="name">ADVENTURES BIKES</h4>
							</div>
							<div class="listing-anons__hidden">
								<h3>ADVENTURES BIKES</h3>
								<p>Adventures bikes like Royal Enfield Himalayan,Bajaj Dominor</p>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-xs-6 isotope-item ">
						<a href="SortByBikes.jsp?bike_category=CityBike" class="listing-anons equal-height-item listing-anons--home triangle triangle--big line-down no-decoration">
							<div class="listing-anons__img">
								<img src="images/backgrounds/citybikes.jpg" class="img-responsive" alt="bike" />
							</div>
							<div class="listing-anons__title">
								<h4 class="name">CITY BIKES</h4>
							</div>
							<div class="listing-anons__hidden">
								<h3>CITY BIKES</h3>
								<p>City Bikes like Bajaj avenger,KTM RC390</p>
							</div>
						</a>
					</div>
				</div>
                        </div>
		</section>
                                               
		

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
