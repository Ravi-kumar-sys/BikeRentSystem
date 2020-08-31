<%-- 
    Document   : Homepage
    Created on : Mar 27, 2019, 11:44:05 PM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.model.BikeImpl"%>
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
                     .sliders__main js-slider-main slider enable-bx-slider{
                        margin-bottom: 0;
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
									<a href="#" data-switchcolor="color2" class="styleswitch" style="background-color:#4fb0fd;;"> </a>
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
		
		
		<!--start header--> 
		
                <jsp:include page='../commonpages/header.jsp'></jsp:include>
               
		<!--end header-->
		
		
		<!--top-nav-->
		<section id="header-top"> 
			<ul class="sliders__main js-slider-main slider enable-bx-slider" data-auto="true" data-auto-hover="true" data-mode="fade" data-pager="false" data-pager-custom="null" data-prev-selector="null" data-next-selector="null">
				<li>
					<img src="images/backgrounds/traffic2.jpg" alt="bxSlider" />
					<div class="sliders__text">
						
						<h3> Easy to ride in traffic on bikes</h3>
						
						<a href="item.html" class="btn button button--transparent">LEARN MORE</a>
					</div>
				</li>
				<li>
					<img src="images/backgrounds/tour6.jpg" alt="bxSlider" />
					<div class="sliders__text">
						
						<h3>Tips for making rides easy</h3>
						
						<a href="item.html" class="btn button button--transparent">LEARN MORE</a>
					</div>
				</li>
				<li>
					<img src="images/backgrounds/tour1.jpg" alt="bxSlider" />
					<div class="sliders__text">
						
						<h3>We provide good condition bikes</h3>
						
						<a href="item.html" class="btn button button--transparent">LEARN MORE</a>
					</div>
				</li>
				<li>
					<img src="images/backgrounds/tour2.jpg" alt="bxSlider" />
					<div class="sliders__text">
						
						<h3>Best tourist places for bikers</h3>
						
						<a href="item.html" class="btn button button--transparent">LEARN MORE</a>
					</div>
				</li>
			</ul>
		</section><!--sliders-->

		<!--images-->

		<!--info-blocks-->

		<!--numbers-->

		<!--home-reviews-->

		<section class="services">
			<div class="container">
				<div class="services__main">
					<h2 class="title title--main " ><span class="title__bold">Biker</span>BrotherhoodServices<span class="line line--small"><span class="line__first"></span><span class="line__second"></span></span></h2>
					<p class="text text--anons " >We Provide best services for our customers.Because we have faced many problems and experienced
                                            so we don't want to make customers fool.We anytime available for customers service
                                            and make solutions during rides and also when customer visit to our office.</p>
                                        
					<div class="row">
						<div class="col-sm-7 col-xs-12 ">
							<div class="services__img">
								<img class="img-responsive" src="images/backgrounds/services.jpg" alt="bike" />
							</div>
						</div>
						<div class="col-sm-5 col-xs-12 ">
							<div class="services__info">
								<div class="services__info-block ">
									<h5 class="clearfix services__title"><a class="pull-left no-decoration js-toggle" href="#">Timely provide bikes</a><a class="square square--toggle pull-right js-toggle"><span class="fa fa-plus"></span></a></h5>
									<div class="services__text triangle triangle--services">
										We provide bikes on time.
									</div>
								</div>
								<div class="services__info-block " >
									<h5 class="clearfix services__title"><a class="pull-left no-decoration js-toggle" href="#">Bikes in top notch conditions</a><a class="square square--toggle pull-right js-toggle"><span class="fa fa-plus"></span></a></h5>
									<div class="services__text triangle triangle--services">
										We always give well-maintain and serviced bikes beacause we don't want that any problem faces by the customers.
									</div>
								</div>
								<div class="services__info-block ">
									<h5 class="clearfix services__title"><a class="pull-left no-decoration js-toggle" href="#">Suggest tourist places</a><a class="square square--toggle pull-right js-toggle"><span class="fa fa-plus"></span></a></h5>
									<div class="services__text triangle triangle--services">
										We suggest selected and adventures places to the tourist for travel and enjoy the rides.
									</div>
								</div>
								<div class="services__info-block " >
									<h5 class="clearfix services__title"><a class="pull-left no-decoration js-toggle" href="#">Contact us</a><a class="square square--toggle pull-right js-toggle"><span class="fa fa-plus"></span></a></h5>
									<div class="services__text triangle triangle--services">
										Contact us feature are basically provide to the customers for enquiry related to any problem face by customers.
									</div>
								</div>
								<div class="services__info-block " >
									<h5 class="clearfix services__title"><a class="pull-left no-decoration js-toggle" href="#">Top Up service</a><a class="square square--toggle pull-right js-toggle"><span class="fa fa-plus"></span></a></h5>
									<div class="services__text triangle triangle--services">
										We provide top up for rent bikes for tension free rides if the bikers are want to extend the rides.
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!--services-->

                
                                                    <% 
                                                     
                                                        ArrayList<Bike> al1=null;
                                                       BikeImpl impl=new BikeImpl();
       
                                                        al1=impl.getAllBikeData();
   
                                                        %>
                
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
					<div class="col-md-3 col-xs-6 isotope-item ">
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
					<div class="col-md-3 col-xs-6 isotope-item ">
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
					<div class="col-md-3 col-xs-6 isotope-item ">
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
					<div class="col-md-3 col-xs-6 isotope-item ">
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
		</section><!--listings-->
                
         
                <section class="blog">
			<div class="container-fluid no-padding">
				<div class="row row--no-padding">
					<div class="col-lg-4 col-xs-12">
						<div class="blog__info">
							<h2 class="title title--main"><span class="title__bold">BIKERS</span>Brotherhood<br>Blog<span class="line line--small"><span class="line__second"></span><span class="line__first"></span></span></h2>
							<p class="text">We share the information regaurding tour and travels in different cities and hill stations.Because some riders have problems to find best places to visit and enjoy.</p>
							<a href="./blog.jsp" class="button btn button--main button--red">VISIT BLOG</a>
						</div>
					</div>
					<div class="col-lg-8 col-xs-12">
						<div class="row row--no-padding">
							<div class="col-sm-6 col-xs-12 ">
								<a href="./blog.jsp" class="blog-anons no-decoration">
									<div class="blog-anons__img">
										<img src="images/backgrounds/tourerbikes.jpg" class="img-responsive" alt="bike" />
									</div>
									<div class="blog-anons__hidden triangle triangle--bigger">
										<div class="blog-anons__text">
											<h3>How to prepare for bike trip in hill stations</h3>
											<div class="blog-anons__info">
												<span><span class="fa fa-calendar-o"></span>MAR 23, 2019</span>
												
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-6 col-xs-12 ">
								<a href="./blog.jsp" class="blog-anons no-decoration">
									<div class="blog-anons__img">
										<img src="images/backgrounds/traffic.jpg" class="img-responsive" alt="bike" />
									</div>
									<div class="blog-anons__hidden triangle triangle--bigger">
										<div class="blog-anons__text">
											<h3>Tips for explore city on bikes</h3>
											<div class="blog-anons__info">
												<span><span class="fa fa-calendar-o"></span>JAN 13, 2019</span>
												
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-6 col-xs-12 ">
								<a href="./blog.jsp" class="blog-anons no-decoration">
									<div class="blog-anons__img">
										<img src="images/backgrounds/bhopalblog.jpg" class="img-responsive" alt="bike" />
									</div>
									<div class="blog-anons__hidden triangle triangle--bigger">
										<div class="blog-anons__text">
											<h3>Tips for enjoy bike rental in Bhopal</h3>
											<div class="blog-anons__info">
												<span><span class="fa fa-calendar-o"></span>FEB 3, 2019</span>
												
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-6 col-xs-12 ">
								<a href="./blog.jsp" class="blog-anons no-decoration">
									<div class="blog-anons__img">
										<img src="images/backgrounds/delhiblog.jpg" class="img-responsive" alt="bike" />
									</div>
									<div class="blog-anons__hidden triangle triangle--bigger">
										<div class="blog-anons__text">
											<h3>Places to visit near Delhi</h3>
											<div class="blog-anons__info">
												<span><span class="fa fa-calendar-o"></span>APRIL 20, 2019</span>
												
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--signup-->
                
                
                
                    
		<!--start footer-->
		
                 <jsp:include page='../commonpages/footer.html'></jsp:include>
                
		<!--home-footer--><!--end footer-->
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
