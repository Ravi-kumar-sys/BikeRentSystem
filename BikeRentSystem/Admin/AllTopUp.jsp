<%-- 
    Document   : ViewAllTopUp
    Created on : Apr 2, 2019, 12:09:39 AM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.model.TopUpImpl"%>
<%@page import="com.wst.bean.TopUp"%>
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
					<h3 class="page-header"><i class="fa fa fa-bars"></i>TopUp</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-bars"></i>TopUp</li>
						<li><i class="fa fa-square-o"></i>TopUp Details</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              All TopUp
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th>TopUp Id</th>
                                 <th>Topup_name</th>
                                 <th>TAmount 50km</th>
                                 <th>TAmount 100km</th>
                                 <th>TAmount 150km</th>
                                 <th>TAmount 200km</th>
                                 <th>TAmount 250km</th>
                                 <th>TAmount 300km</th>
                                 <th>Status</th>
                                 <th>Add Time</th>
                              </tr>
     <% 
       try{
     ArrayList<TopUp> al=null;
        TopUpImpl impl=new TopUpImpl();
       
            al=impl.getAllTopUpData();

            for(TopUp t : al)
            {  %>
                              <tr>
                                  <td><%=t.getTopup_id()%></td>
                                  <td><%=t.getTopup_name()%></td>
                                  <td><%=t.getTopup_Amount_50km()%></td>
                                  <td><%=t.getTopup_Amount_100km()%></td>
                                  <td><%=t.getTopup_Amount_150km()%></td>
                                  <td><%=t.getTopup_Amount_200km()%></td>
                                  <td><%=t.getTopup_Amount_250km()%></td>
                                  <td><%=t.getTopup_Amount_300km()%></td>
                                  <td><%=t.getTopup_status()%></td>
                                  <td><%=t.getTopup_addtime()%></td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href='./UpdateTopUpById.jsp?topup_id=<%=t.getTopup_id()%>'><i class="icon_plus_alt2"></i></a>
                                      
                                      <a class="btn btn-danger" href='../DeleteTopUpById?topup_id=<%=t.getTopup_id()%>'><i class="icon_close_alt2"></i></a>
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
