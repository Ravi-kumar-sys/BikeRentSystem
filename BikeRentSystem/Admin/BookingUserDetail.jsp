<%-- 
    Document   : ViewBookingUserDetail
    Created on : Apr 3, 2019, 11:21:33 AM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.model.BookingDetailsImpl"%>
<%@page import="com.wst.bean.BookingDetails"%>
<%@page import="java.util.ArrayList"%>
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
					<h3 class="page-header"><i class="fa fa fa-bars"></i>Booking</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Home</a></li>
						<li><i class="fa fa-bars"></i>Booking</li>
						<li><i class="fa fa-square-o"></i>Booking Details</li>
						
					</ol>
				</div>
			</div>
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              All Bookings
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th>BD id</th>
                                 <th>BD name</th>
                                 <th>BD emailid</th>
                                 <th>BD phone</th>
                                 <th>BD DL No.</th>
                                 <th>BD DOB</th>
                                 <th>BD Pickup Type</th>
                                 <th>BD t&c</th>
                              </tr>
     <% 
       try{
     ArrayList<BookingDetails> al=null;
        BookingDetailsImpl impl=new BookingDetailsImpl();
       
            al=impl.getAllBookingdData();

            for(BookingDetails bd : al)
            {  %>
                              <tr>
                                  <td><%=bd.getBookingd_id()%></td>
                                  <td><%=bd.getBookingd_name()%></td>
                                  <td><%=bd.getBookingd_email()%></td>
                                  <td><%=bd.getBookingd_phone()%></td>
                                  <td><%=bd.getBookingd_dlno()%></td>
                                  <td><%=bd.getBookingd_dob()%></td>
                                  <td><%=bd.getBookingd_pickup_type()%></td>
                                  <td><%=bd.getBookingd_terms()%></td>
                                 <td>
                                  
                                  </td>
                              </tr>
                              <%  }
       }
          catch(Exception e){} %>
                                                         
                           </tbody>
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
