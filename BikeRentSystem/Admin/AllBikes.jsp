<%-- 
    Document   : ViewAllBikes
    Created on : Apr 1, 2019, 11:38:13 PM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.model.BikeImpl"%>
<%@page import="com.wst.bean.Bike"%>
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
                              All Bikes Detail
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th>Bike id </th>
                                 <th>Bike name </th>
                                 <th> Bike Engin CC</th>
                                 <th>Tariff id </th>
                                 <th> Topup id</th>
                                 <th>Priority</th>
                                 <th>Status</th>
                                 <th>TimeStamp</th>
                                 <th>Action</th>
                                 
                              </tr>
     <% 
       try{
     ArrayList<Bike> al=null;
        BikeImpl impl=new BikeImpl();
       
            al=impl.getAllBikeData();

            for(Bike b : al)
            {  %>
                              <tr>
                                  <td><%=b.getBike_id()%></td>
                                  <td><%=b.getBike_name()%></td>                                
                                  <td><%=b.getBike_Engin_CC()%></td>
                                  <td><%=b.getTariff_id()%></td>
                                  <td><%=b.getTopup_id()%></td>
                                  <td><%=b.getPriority()%></td>
                                  <td><%=b.getStatus()%></td>
                                  <td><%=b.getTimestamp()%></td>
                                 
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href='./UpdateBikeById.jsp?bike_id=<%=b.getBike_id()%>'><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="./ViewBikes.jsp?bike_id=<%= b.getBike_id() %>"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href='../DeleteBikeById?bike_id=<%=b.getBike_id()%>'><i class="icon_close_alt2"></i></a>
                                      <a class="btn btn-danger" href='./UpdateBikeStatus.jsp?bike_id=<%=b.getBike_id()%>'><i class="fa fa-pencil"></i></a>
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
