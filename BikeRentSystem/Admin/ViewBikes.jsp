<%-- 
    Document   : ViewBikes
    Created on : Apr 4, 2019, 11:51:52 PM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.bean.Bike"%>
<%@page import="com.wst.model.BikeImpl"%>
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
					<h3 class="page-header"><i class="fa fa fa-bars"></i>Bike</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Home</a></li>
						<li><i class="fa fa-bars"></i>Bikes</li>
						<li><i class="fa fa-square-o"></i>Bikes Details</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Bike Detail
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <%! BikeImpl bimpl = new BikeImpl(); %>
                              <% Bike b = bimpl.getDataByBikeId(Integer.parseInt(request.getParameter("bike_id"))); %>
                              <%-- <%! TariffDao td = new TariffDao(); %>
                              <% Tariff tb = td.getUserById(t.getTariffId());  %>--%>
                              <tr>
                                 <th>Bike Id</th>
                                 <th> : </th>
                                 <th><%= b.getBike_id() %></th>
                              </tr>
                              <tr>
                                 <th>Bike Name</th>
                                 <th> : </th>
                                 <th><%= b.getBike_name() %></th>
                              </tr>
                              <tr>
                                 <th>Bike Description</th>
                                 <th> : </th>
                                 <th><%= b.getBike_description() %></th>
                              </tr>
                              <tr>
                                 <th>Bike Category</th>
                                 <th> : </th>
                                 <th><%= b.getBike_category() %></th>
                              </tr>
                              <tr>
                                 <th>Bike Company</th>
                                 <th> : </th>
                                 <th><%= b.getBike_company() %></th>
                              </tr>
                              <tr>
                                 <th>Bike Model</th>
                                 <th> : </th>
                                 <th><%= b.getBike_Model() %></th>
                              </tr>
                              <tr>
                                 <th>Bike RC No</th>
                                 <th> : </th>
                                 <th><%= b.getBike_RC_No()%></th>
                              </tr>
                              <tr>
                                 <th>Bike RC Namet</th>
                                 <th> : </th>
                                 <th><%= b.getBike_RC_Name() %></th>
                              </tr>
                              <tr>
                                 <th>Bike RC RegDate </th>
                                 <th> : </th>
                                 <th><%= b.getBike_RC_RegDate()%></th>
                              </tr>
                              <tr>
                                 <th>Bike RC ExpDate</th>
                                 <th> : </th>
                                 <th><%= b.getBike_RC_ExpDate() %></th>
                              </tr>
                              <tr>
                                 <th>Bike RC CHNO</th>
                                 <th> : </th>
                                 <th><%= b.getBike_RC_CHNO() %></th>
                              </tr>
                              <tr>
                                 <th>Bike RC EnginNo</th>
                                 <th> : </th>
                                 <th><%= b.getBike_RC_EnginNo() %></th>
                              </tr>
                              <tr>
                                 <th>Bike YearMfg</th>
                                 <th> : </th>
                                 <th><%= b.getBike_YearMfg() %></th>
                              </tr>
                              <tr>
                                 <th>Bike NoOfGear</th>
                                 <th> : </th>
                                 <th><%= b.getBike_NoOfGear() %></th>
                              </tr>
                              <tr>
                                 <th>Bike Image</th>
                                 <th> : </th>
                                 <th><%= b.getBike_img() %></th>
                              </tr>
                              <tr>
                                 <th>Bike Color</th>
                                 <th> : </th>
                                 <th><%= b.getBike_color() %></th>
                              </tr>
                              <tr>
                                 <th>Selfstart</th>
                                 <th> : </th>
                                 <th><%= b.getSelfstart() %></th>
                              </tr>
                              <tr>
                                 <th>Bike Engin CC</th>
                                 <th> : </th>
                                 <th><%= b.getBike_Engin_CC() %></th>
                              </tr>
                              <tr>
                                 <th>Tariff Id</th>
                                 <th> : </th>
                                 <th><%= b.getTariff_id() %></th>
                              </tr>
                              <tr>
                                 <th>Topup Id</th>
                                 <th> : </th>
                                 <th><%= b.getTopup_id() %></th>
                              </tr>
                              <tr>
                                 <th>Priority</th>
                                 <th> : </th>
                                 <th><%= b.getPriority() %></th>
                              </tr>
                              <tr>
                                 <th>Status</th>
                                 <th> : </th>
                                 <th><%= b.getStatus() %></th>
                              </tr>
                              <tr>
                                 <th>Timestamp</th>
                                 <th> : </th>
                                 <th><%= b.getTimestamp() %></th>
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