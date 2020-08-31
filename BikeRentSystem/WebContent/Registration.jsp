<%-- 
    Document   : Registration
    Created on : Mar 28, 2019, 12:25:08 AM
    Author     : Ravi kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String msg=""; %>
<%
    int err=0;
    String er=request.getParameter("error");
    if(er!=null)
    {
        err=Integer.parseInt(er);   
        if(err==101)
        {
            msg="Password Missmatch";
        }
        else if(err==102)
        {
            msg="Something went wrong";
        }
       
    }
%>
<!DOCTYPE html>
<html>
	<head>
            
        <% 
            
            if(msg!="")
            {
        %>        
        <script>          
            alert("<%= msg %>"); 
        </script>
        <% 
            }
        %>
       
            
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
                     .contacts-form{
                         background: grey;
                         border-radius: 10px;
                         -moz-border-radius: 10px;
                         -webkit-border-radius: 10px;
                         -o-border-radius: 10px;
                         -ms-border-radius: 10px;
                         padding: 40px 85px; }
                     
                     
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
                
                
        
            <section class="contacts" style="background:url('images/backgrounds/b9.jpg')">
            <div class="container" >
                <div class="row" >
                    <div class="contacts-find" >
                        <div class="col-md-5 col-md-offset-3">
                            <div class="contacts-form" style="background-color:rgba(80,54,84,0.6);height:100%">
                                <h1 style="font-size:200%; color:White" class="blog-title">Registration</h1>
                                <div id="success"></div>

                                <form action="./registration" method="post" id="contactForm" class="comment-form">

                                    <div class="comment-form__input">

                                        <input type="text" class="form-control" name="name" id="user-name" placeholder="Full Name" />
                                    </div>
                                    <div class="comment-form__input">
                                        <input type= "text" class="form-control" name="email" id="user-email" placeholder="Email" />
                                    </div>
                                    <div class="comment-form__input">
                                        <input type="password" class="form-control" name="password" id="user-website" placeholder="Password" />
                                    </div>
                                    <div class="comment-form__input">
                                       <input type="password" class="form-control" name="cpassword" id="user-website" placeholder="confirm password" />
                                    </div>
                                    <div class="comment-form__input">
                                     <input type="text" class="form-control" name="mobile" id="user-website" placeholder="mobile no" />
                                    </div>

                                    <center><button type="submit" class="btn button button--red triangle triangle--12" value="SignUp">Sign Up</button></center><br>
                                    <center><a href="./Login.jsp" >Already have an account? Log in</a></center>
                                </form>
                            </div>
                        </div>
                    </div>
                </div >
        </section>
     
      
      
      
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
