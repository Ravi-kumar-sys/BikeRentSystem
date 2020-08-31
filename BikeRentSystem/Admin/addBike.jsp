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
                              Add New Bike
                          </header>
                          <div class="panel-body">
                              <form action="../BikesRecord" method="post" enctype="multipart/form-data">
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike name</label>
                                      <input type="text" name="Bike_name" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_name">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputPassword1">Bike description</label>
                                      <input type="text" name="Bike_description" class="form-control" id="exampleInputPassword1" placeholder="Enter Bike_description">
                                  </div>
                                  
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Select Bike Category</label>
                                      <select name="Bike_category" class="form-control" id="exampleInputEmail1" placeholder="#">
                                          <option value="Scooty">Scooty</option>
                                          <option value="Tourer">Tourer</option>
                                          <option value="Adventure">Adventure</option>
                                          <option value="CityBike">CityBike</option>
                                      </select>                              
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike company</label>
                                      <input type="text" name="Bike_company" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_company">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike Model</label>
                                      <input type="text" name="Bike_Model" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_Model">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike RC No</label>
                                      <input type="text" name="Bike_RC_No" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_RC_No">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike RC Name</label>
                                      <input type="text" name="Bike_RC_Name" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_RC_Name">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike RC RegDate</label>
                                      <input type="date" name="Bike_RC_RegDate" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_RC_RegDate">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike RC ExpDate</label>
                                      <input type="date" name="Bike_RC_ExpDate" class="form-control" id="exampleInputEmail1" placeholder="Bike_RC_ExpDate">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike RC CHNO</label>
                                      <input type="text" name="Bike_RC_CHNO" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_RC_CHNO">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike RC EnginNo</label>
                                      <input type="text" name="Bike_RC_EnginNo" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_RC_EnginNo">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike_YearMfg</label>
                                      <input type="text" name="Bike_YearMfg" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_YearMfg">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike NoOfGear</label>
                                      <input type="text" name="Bike_NoOfGear" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_NoOfGear">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike image</label>
                                      <input type="file" src="#" name="Bike_img" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_image">
                                  </div>
                                   <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike color</label>
                                      <input type="text" name="Bike_color" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_color">
                                  </div>
                                  <div class="form-group col-lg-6">
                                  <label for="exampleInputFile">Self Start</label>
                                      <select name="Selfstart" id="exampleInputFile" class="form-control">
                                          <option value="1">Yes</option>
                                          <option value="0">No</option>
                                      </select>
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Bike Engin CC</label>
                                      <input type="text" name="Bike_Engin_CC" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike_Engin_CC">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Select Tariff</label>
                                      <select name="Tariff_id" class="form-control" id="exampleInputEmail1" placeholder="#">
                                          <%! ArrayList<Tariff> al; %>
                                          <% 
                                              al= new TariffImpl().getAllTariffData();
                                              for(Tariff t : al)
                                              {
                                          %>
                                          <option value="<%= t.getTariff_id() %>"><%= t.getTariff_name() %></option>
                                          <%
                                                  }
                                           %>
                                      </select>                              
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Select Topup</label>
                                      <select name="TopUp_id" class="form-control" id="exampleInputEmail1" placeholder="#">
                                          <%! ArrayList<TopUp> al1; %>
                                          <% 
                                              al1= new TopUpImpl().getAllTopUpData();
                                              for(TopUp t : al1)
                                              {
                                          %>
                                          <option value="<%= t.getTopup_id() %>"><%= t.getTopup_name() %></option>
                                          <%
                                                  }
                                           %>
                                      </select>                              
                                  </div>    
                          
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Priority</label>
                                      <input type="number" name="Priority" min="1" max="7" class="form-control" id="exampleInputEmail1" placeholder="Enter Priority">
                                  </div>
                                  <div class="form-group col-lg-6">
                                      <label for="exampleInputEmail1">Status</label>
                                      <select name="Status" id="exampleInputFile" class="form-control">
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
