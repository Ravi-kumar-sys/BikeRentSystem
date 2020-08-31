<%-- 
    Document   : ViewTariffDetail
    Created on : Apr 2, 2019, 7:29:13 PM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.bean.Tariff"%>
<%@page import="com.wst.model.TariffImpl"%>
<%@page import="com.wst.model.TariffdImpl"%>
<%@page import="com.wst.bean.TariffDetails"%>
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
					<h3 class="page-header"><i class="fa fa fa-bars"></i>Tariff Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-bars"></i>Tariff Details</li>
						<li><i class="fa fa-square-o"></i>Tariff Details List</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              All Tariff List
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th> Td_id</th>
                                 <th> Tariff_id</th>
                                 <th> Td_duration</th>
                                 <th> Td_tariff_amount</th>
                                 <th> Td_rideLimit</th>
                                 <th> Td_afterLimit_amount</th>
                                 
                              </tr>
     <% 
       try{
     ArrayList<TariffDetails> al=null;
        TariffdImpl impl=new TariffdImpl();
       
            al=impl.getAllTariffdData();
   
            for(TariffDetails td : al)
            {  %>
                              <tr>
                                  <td><%=td.getTd_id()%></td>
                                  <td><%=td.getTariff_id()%></td>
                                  <td><%=td.getTd_duration()%></td>
                                  <td><%=td.getTd_tariff_amount()%></td>
                                  <td><%=td.getTd_rideLimit()%></td>
                                  <td><%=td.getTd_afterLimit_amount()%></td>
                                  
                                  
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href='./UpdateTariffById.jsp?td_id=<%=td.getTd_id()%>'><i class="icon_plus_alt2"></i></a>
                                     <a class="btn btn-success" href="./ViewTariff.jsp?td_id=<%= td.getTd_id() %>"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href='../DeleteTariffdById?td_id=<%=td.getTd_id()%>'><i class="icon_close_alt2"></i></a>
                                  </div>
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
