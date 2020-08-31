<%-- 
    Document   : UpdateTariffById
    Created on : Apr 2, 2019, 10:08:22 AM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.model.TariffdImpl"%>
<%@page import="com.wst.bean.TariffDetails"%>
<%@page import="com.wst.model.TariffImpl"%>
<%@page import="com.wst.bean.Tariff"%>
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
						<li><i class="fa fa-home"></i><a href="index.jsp">Home</a></li>
						<li><i class="fa fa-bars"></i>Tariff</li>
						<li><i class="fa fa-square-o"></i>Update Tariff</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              
              <%! TariffdImpl tdd = new TariffdImpl(); %>
                              <% TariffDetails t = tdd.getDataByTariffdId(Integer.parseInt(request.getParameter("td_id"))); %>
                              <%! TariffImpl td = new TariffImpl(); %>
                              <% Tariff tb = td.getDataByTariffId(t.getTariff_id());  %>
              
              
              <div class="row">
               <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Update Tariff
                          </header>
                          <div class="panel-body">
                              <form role="form" method="post" action="../UpdateTariffDetails">
                                 <div class="form-group col-lg-0">
                                      
                                      <input type="hidden" value='<%=t.getTd_id()%>' name="Td_id" class="form-control" id="exampleInputEmail1" placeholder="Enter Tariff Id">
                                  </div>
                                  <div class="form-group col-lg-0">
                                      
                                      <input type="hidden" value='<%=t.getTariff_id()%>' name="Tariff_id" class="form-control" id="exampleInputEmail1" placeholder="Enter Tariff Id">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Tariff name</label>
                                      <input type="text" value='<%=tb.getTariff_name()%>' name="Tariff_name" class="form-control" id="exampleInputEmail1" placeholder="Enter Tariff Name">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputPassword1">Tariff Details</label>
                                      <input type="text" value='<%=tb.getTariff_Details()%>' name="Tariff_Details" class="form-control" id="exampleInputPassword1" placeholder="Enter Tariff Details">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputPassword1">Td duration</label>
                                      <input type="text" value='<%=t.getTd_duration()%>' name="Td_duration" class="form-control" id="exampleInputPassword1" placeholder="Enter Td_duration">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputPassword1">Td_tariff_amount</label>
                                      <input type="text" value='<%=t.getTd_tariff_amount()%>' name="Td_tariff_amount" class="form-control" id="exampleInputPassword1" placeholder="Enter Td_tariff_amount">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputPassword1">Td_rideLimit</label>
                                      <input type="text" value='<%=t.getTd_rideLimit()%>' name="Td_rideLimit" class="form-control" id="exampleInputPassword1" placeholder="Enter Td_rideLimit">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputPassword1">Td_afterLimit_amount</label>
                                      <input type="text" value='<%=t.getTd_afterLimit_amount()%>' name="Td_afterLimit_amount" class="form-control" id="exampleInputPassword1" placeholder="Enter Td_afterLimit_amount">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputPassword1">Td_afterLimit_km</label>
                                      <input type="text" value='<%=t.getTd_afterLimit_km()%>' name="Td_afterLimit_km" class="form-control" id="exampleInputPassword1" placeholder="Enter Tariff Details">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputPassword1">Td_afterLimit_unit_charge</label>
                                      <input type="text" value='<%=t.getTd_afterLimit_unit_charge()%>' name="Td_afterLimit_unit_charge" class="form-control" id="exampleInputPassword1" placeholder="Enter Tariff Details">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Status</label>
                                      <select name="Tariff_status" value='<%=tb.getTariff_status()%>' id="exampleInputFile" class="form-control">
                                          <option value="1">Active</option>
                                          <option value="0">Non Active</option>
                                      </select>
                                  </div>
                                   
                                  
                                  <div class="col-lg-5">
                                  </div>
                                  <div class="col-lg-4">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                  </div>
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
