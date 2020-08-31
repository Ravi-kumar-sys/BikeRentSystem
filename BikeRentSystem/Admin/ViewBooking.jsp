<%-- 
    Document   : ViewBooking
    Created on : Apr 7, 2019, 4:51:33 PM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.bean.Bike"%>
<%@page import="com.wst.model.BikeImpl"%>
<%@page import="com.wst.bean.BookingDetails"%>
<%@page import="com.wst.model.BookingDetailsImpl"%>
<%@page import="com.wst.bean.Booking"%>
<%@page import="com.wst.model.BookingImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Bikers Brotherhood Admin</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>

  <body>
      <% 
                 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
                   if(session.getAttribute("emailId")==null)
                   {
                       response.sendRedirect("./AdminLogin.jsp");
                   }
            %>
  <!-- container section start -->
  <section id="container" class="">
      <!--header end-->
        <jsp:include page="./common-page/header/header.jsp"/>
      <!--sidebar start-->
        <jsp:include page="./common-page/side-bar/sideBar.jsp"/>
      <!--sidebar end-->

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa fa-bars"></i>Tariff</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-bars"></i>Tariff</li>
						<li><i class="fa fa-square-o"></i>Tariff Details</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              All Booking
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                            <%! BookingImpl tdd = new BookingImpl(); %>
                              <% Booking b = tdd.getDataByBookingId(Integer.parseInt(request.getParameter("booking_id"))); %>
                              
                              <%! BookingDetailsImpl td = new BookingDetailsImpl(); %>
                              <% BookingDetails bd = td.getDataByBookingdId(b.getBooking_details_id()); %>
                               
                             <%! BikeImpl bk=new BikeImpl();%>
                             <% Bike bike=bk.getDataByBikeId(b.getBooking_bike_id());%>
                              
                             
                              
                              <tr>
                                 <th>Booking Name</th>
                                 <th> : </th>
                                 <th><%= bd.getBookingd_name() %></th>
                              </tr>
                              <tr>
                                 <th>Booking_pickup_date</th>
                                 <th> : </th>
                                 <th><%= b.getBooking_pickup_date() %></th>
                              </tr>
                              <tr>
                                 <th>Booking_pickup_time</th>
                                 <th> : </th>
                                 <th><%= b.getBooking_pickup_time()%></th>
                              </tr>
                              <tr>
                                 <th>Booking_drop_date</th>
                                 <th> : </th>
                                 <th><%=b.getBooking_drop_date()%></th>
                              </tr>
                              <tr>
                                 <th>Booking_drop_time</th>
                                 <th> : </th>
                                 <th><%=b.getBooking_drop_time()%></th>
                              </tr>
                              <tr>
                                 <th>Bike_name</th>
                                 <th> : </th>
                                 <th><%= bike.getBike_name()%></th>
                              </tr>
                              <tr>
                                 <th>Booking_status</th>
                                 <th> : </th>
                                 <th><%= b.getBooking_status()%></th>
                              </tr>
                              <tr>
                                 <th>BookingTime</th>
                                 <th> : </th>
                                 <th><%= b.getBookingTime()%></th>
                              </tr>
                             
                        </table>
                      </section>
                  </div>
              </div>
              
              
              
              
              
              
              
              
              
              
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
     </section>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script><!--custome script for all page-->
    <script src="js/scripts.js"></script>


  </body>
</html>
