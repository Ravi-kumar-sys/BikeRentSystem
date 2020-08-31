<%@page import="com.wst.model.TopUpImpl"%>
<%@page import="com.wst.bean.TopUp"%>
<%@page import="com.wst.model.TariffImpl"%>
<%@page import="com.wst.bean.Tariff"%>
<%@page import="java.util.ArrayList"%>
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
					<h3 class="page-header"><i class="fa fa fa-bars"></i>Bikes</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Home</a></li>
						<li><i class="fa fa-bars"></i>Bikes</li>
						<li><i class="fa fa-square-o"></i>Add Bikes</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              
              <div class="row">
               <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Update Bike Status
                              
                              <% 
                              int bikeid=Integer.parseInt(request.getParameter("bike_id"));
                              %>
                          </header>
                          <div class="panel-body">
                              <form action="../UpdateBikeStatus" method="get">
                                  <input type="hidden" name="bikeid" value="<%=bikeid %>" >
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Select Bike Status</label>
                                      <select name="bikestatus" class="form-control" id="exampleInputEmail1">
                                          <option value="1">Active</option>
                                          <option value="0"> Not Active</option>
                                      </select>                              
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
