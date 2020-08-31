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
            .contacts-form{
                -moz-box-shadow: 1px 2px 4px rgba(0, 0, 0,0.5);
                -webkit-box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
                box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
                padding: 10px;
                background: white;
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
            <section class="dark-bg dark-bg--shop">
                <div class="container ">
                    <h2 class="title title--page"><span class="title__bold">Contact Us</span></h2>
                </div>
            </section>
            <!--contacts-->
            <!--link-->

            <section class="contacts">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-7 ">
                            <div class="contacts-find">
                                <h3 class="blog-title">How to find us<span class="line line--title line--blog-title"><span class="line__first"></span><span class="line__second"></span></span></h3>
                                <p class="blog-text blog-text--article">Whatever your reason for coming - and there are plenty - here's the travel information you need to find your way to Bikers Brotherhood office.</p>
                                <div class="map">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3666.2876449410264!2d77.42778321497165!3d23.232617584847073!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397c4260ca436c75%3A0x8c96650f79c9e9e8!2sDB+City+Mall!5e0!3m2!1sen!2sin!4v1554486906482!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 ">

                            <div class="contacts-form">
                                <h3 class="blog-title">Drop us a message<span class="line line--title line--blog-title"><span class="line__first"></span><span class="line__second"></span></span></h3>
                                <div id="success"></div>
                                <p class="blog-text blog-text--article">Feel free to contact us, send your queries we will found us to make service better. </p>
                                <form action="./UserContact" id="contactForm" method="POST" class="comment-form">
                                    <div class="comment-form__input">
                                        <input type="text" class="search-input" name="Contact_name" id="user-name" placeholder="Full Name" />
                                    </div>
                                    <div class="comment-form__input">
                                        <input type="email" class="search-input" name="Contact_email" id="user-email" placeholder="Email" />
                                    </div>
                                    <div class="comment-form__input">
                                        <input type="text" class="search-input" name="Contact_phone" id="user-website" placeholder="Phone no." />
                                    </div>
                                    <div class="comment-form__input">
                                        <textarea id="user-message" name="Contact_message" placeholder="Message" class="comment-textarea search-input"></textarea>
                                    </div>
                                    <button type="submit"  class="btn button button--main button--grey transparent">submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="link">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1 col-xs-12">
                            <div class="row">
                                <div class="col-xs-4 ">
                                    <div class="link__phone">
                                        <div class="link__square triangle triangle--12">
                                            <span class="fa fa-mobile"></span>
                                        </div>
                                        <h3>PHONE</h3>
                                        <p>9058966887 <br />8318498844</p>
                                    </div>
                                </div>
                                <div class="col-xs-4 ">
                                    <div class="link__phone">
                                        <div class="link__square triangle triangle--12">
                                            <span class="fa fa-map-marker"></span>
                                        </div>
                                        <h3>ADDRESS</h3>
                                        <p>6567 22/33 MP Nagar<br/>Bhopal Madhya Pradesh</p>
                                    </div>
                                </div>
                                <div class="col-xs-4 ">
                                    <div class="link__phone">
                                        <div class="link__square triangle triangle--12">
                                            <span class="fa fa-envelope-o"></span>
                                        </div>
                                        <h3>EMAIL</h3>
                                        <p>sales@bikersbrotherhood.com <br/>info@domain.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!--link-->
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
