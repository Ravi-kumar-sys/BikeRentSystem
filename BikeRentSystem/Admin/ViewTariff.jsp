<%-- 
    Document   : ViewTariff
    Created on : Apr 5, 2019, 10:49:52 AM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.bean.Tariff"%>
<%@page import="com.wst.model.TariffImpl"%>
<%@page import="com.wst.bean.TariffDetails"%>
<%@page import="com.wst.model.TariffdImpl"%>
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
                              All Tariff
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                            <%! TariffdImpl tdd = new TariffdImpl(); %>
                              <% TariffDetails t = tdd.getDataByTariffdId(Integer.parseInt(request.getParameter("td_id"))); %>
                              <%! TariffImpl td = new TariffImpl(); %>
                              <% Tariff tb = td.getDataByTariffId(t.getTariff_id());  %>
                              
                              <tr>
                                 <th>Tariff Name</th>
                                 <th> : </th>
                                 <th><%= tb.getTariff_name() %></th>
                              </tr>
                              <tr>
                                 <th>Tariff Details</th>
                                 <th> : </th>
                                 <th><%= tb.getTariff_Details() %></th>
                              </tr>
                              <tr>
                                 <th>Tariff Status</th>
                                 <th> : </th>
                                 <th><%= tb.getTariff_status() %></th>
                              </tr>
                              
                              <tr>
                                 <th>Tariff Duration</th>
                                 <th> : </th>
                                 <th><%= t.getTd_duration() %></th>
                              </tr>
                              <tr>
                                 <th>Tariff Tariff Amount</th>
                                 <th> : </th>
                                 <th><%= t.getTd_tariff_amount()%></th>
                              </tr>
                              <tr>
                                 <th>Ride Limit</th>
                                 <th> : </th>
                                 <th><%= t.getTd_rideLimit() %></th>
                              </tr>
                              <tr>
                                 <th>After Limit Km </th>
                                 <th> : </th>
                                 <th><%= t.getTd_afterLimit_amount()%></th>
                              </tr>
                              <tr>
                                 <th>After Limit Amount</th>
                                 <th> : </th>
                                 <th><%= t.getTd_afterLimit_km() %></th>
                              </tr>
                              <tr>
                                 <th>After Limit Per Unit charge</th>
                                 <th> : </th>
                                 <th><%= t.getTd_afterLimit_unit_charge() %></th>
                              </tr>
                               <tr>
                                 <th>Tariff Create time</th>
                                 <th> : </th>
                                 <th><%= tb.getTariff_CreateTime() %></th>
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
