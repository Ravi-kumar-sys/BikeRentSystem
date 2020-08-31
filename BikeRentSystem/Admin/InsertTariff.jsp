<%-- 
    Document   : InsertTariff
    Created on : Apr 5, 2019, 11:59:13 AM
    Author     : Ravi kumar
--%>

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
						<li><i class="fa fa-bars"></i>tariff</li>
						<li><i class="fa fa-square-o"></i>Add Tariff</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              
              <div class="row">
               <div class="col-lg-8">
                      <section class="panel">
                          <header class="panel-heading">
                              Add New Tarrif
                          </header>
                          <div class="panel-body">
                              <form action="../TariffD">
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">Tarrif Name</label>
                                      <input type="text" name="Tariff_name" class="form-control" id="exampleInputEmail1" placeholder="Enter Tarrif Name">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Tarrif Detail</label>
                                      <input type="text" name="Tariff_Details" class="form-control" id="exampleInputPassword1" placeholder="Enter Tarrif Details">
                                  </div>
                                  
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Tarrif Duration</label>
                                      <input type="text" name="Td_duration" class="form-control" id="exampleInputPassword1" placeholder="Td_duration">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Td_tariff_amount</label>
                                      <input type="text" name="Td_tariff_amount" class="form-control" id="exampleInputPassword1" placeholder="Td_tariff_amount">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Td_rideLimit</label>
                                      <input type="text" name="Td_rideLimit" class="form-control" id="exampleInputPassword1" placeholder="Td_rideLimit">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Td_afterLimit_amount</label>
                                      <input type="text" name="Td_afterLimit_amount" class="form-control" id="exampleInputPassword1" placeholder="Td_afterLimit_amount">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Td_afterLimit_km</label>
                                      <input type="text" name="Td_afterLimit_km" class="form-control" id="exampleInputPassword1" placeholder="Td_afterLimit_km">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Td_afterLimit_unit_charge</label>
                                      <input type="text" name="Td_afterLimit_unit_charge" class="form-control" id="exampleInputPassword1" placeholder="Td_afterLimit_unit_charge">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputFile">Tarrif Status</label>
                                      <select name="Tariff_status" id="exampleInputFile" class="form-control">
                                          <option value="1">Active</option>
                                          <option value="0">Non-active</option>
                                      </select>
                                  </div>
                                  <button type="submit" class="btn btn-primary">Submit</button>
                              </form>

                          </div>
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
