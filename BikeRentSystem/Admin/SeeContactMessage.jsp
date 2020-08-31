<%-- 
    Document   : ViewAllContact
    Created on : Apr 2, 2019, 12:32:17 AM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.model.ContactImpl"%>
<%@page import="com.wst.bean.Contact"%>
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

    <style>
        .panel{
            box-shadow: 1px 6px 6px rgba(0, 0, 0, .5);
        }
        .panel-heading{
            background-color: black;
            color:white;
        }
        
        
    </style>
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
				
			</div>
              <!-- page start-->
              
              
              <%
        
   
      
     Contact c=new Contact();
     
        int id=Integer.parseInt(request.getParameter("contact_id"));
        ContactImpl impl=new ContactImpl();
       
            c=impl.getDataByContactId(id);
%>
              <div class="row">
                  <div class="col-lg-7 col-lg-offset-2">
                      <section class="panel">
                          <header class="panel-heading">
                              <b>Message</b>
                          </header>
                          
                                  <td><%=c.getContact_message()%></td>
                                </tr>
                          <br><br><br><br><br><br><br><br><br><br><br><br><br>
                                     <div>
                                         <a class="btn btn-primary" href="../UpdateContactStatus?contact_id=<%= c.getContact_id() %>">Mark as Read</a>
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
