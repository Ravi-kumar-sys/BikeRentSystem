<%-- 
    Document   : header
    Created on : Apr 13, 2019, 7:07:34 PM
    Author     : Ravi kumar
--%>

<%@page import="com.wst.model.UserImpl"%>
<%@page import="com.wst.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>

    </head>
    <body>
        <style>
            .top-nav__main{
                background-color: black;
                margin-left: -105px;
                margin-right: -103px;
                padding-left: 50px;
                padding-right: 40px;
                padding-bottom: 14px;
                padding-top: 14px;
                box-shadow: 1px 5px 5px rgba(0, 0, 0, .8);
            }
            .logo__title{
                padding-top: 5px;
            }
        </style>
        <!--<header id="header-top" class="top-header">
            <div class="container">
                <div class="top-header__main wow slideInDown" data-wow-delay="0.7s" data-wow-duration="1.5s">
                    <div class="row">
                        <div class="col-xs-4">
        
                        </div>
                        <div class="col-xs-8">
                            <div class="header-contacts clearfix">
                                <div class="header-contacts__one">
                                    <a href="contacts.html" class="header-contacts__phone square">
                                        <span class="fa fa-phone"></span>
                                    </a>
                                    <a style="color:white" href="contacts.html" class="header-contacts__link">9058966887</a>
                                </div>
                                <div class="header-contacts__one">
                                    <a href="contacts.html" class="header-contacts__email square">
                                        <span class="fa fa-envelope"></span>
                                    </a>
                                    <a style="color:white" href="contacts.html" class="header-contacts__link">ravirajgzp@gmail.com</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header><!--top-header-->

        <nav class="top-nav" >
            <div class="container" >
                <div class="top-nav__main">
                    <div class="row">
                        <div class="col-md-3 col-xs-12">
                            <a href="./Homepage.jsp" class="logo">
                                <span class="logo__moto">

                                    <img src="images/svg/logo1.svg" alt="logo">
                                </span>

                                <h2 style="color:white" class="logo__title">
                                    <i class="fa fa-motorcycle"></i> BIKERS<span style="color:coral">BROTHERHOOD</span>
                                </h2>
                            </a>
                        </div>
                        <div class="col-md-9 col-xs-12">
                            <div class="main-nav navbar-main-slide">
                                <a href="#" class="btn_header_search main-nav__search ">
                                    <span class="fa fa-search"></span>
                                </a>

                                <ul class="collapse navbar-collapse navbar-nav-menu" id="nav">
                                    <li class="dropdown">
                                        <a style="color:white" class="no-decoration dropdown-toggle" href="./Homepage.jsp">Home </a>
                                        <span class="main-nav__separator"><span></span><span></span><span></span></span>



                                    </li>
                                    <li><a style="color:white" class="no-decoration" href="./Booking.jsp">Booking</a></li>
                                    <!-- <li><a style="color:white" class="no-decoration" href="about.jsp">About us</a><span class="main-nav__separator"><span></span><span></span><span></span></span></li>-->
                                    <li><a style="color:white" class="no-decoration" href="./Tariff.jsp">Tariff</a><span class="main-nav__separator"><span></span><span></span><span></span></span></li>
                                                <%if (session.getAttribute("emailid") == null) {%>
                                    <li><a style="color:white" class="no-decoration" href="./Registration.jsp">SignUp</a><span class="main-nav__separator"><span></span><span></span><span></span></span></li>
                                    <li><a style="color:white" class="no-decoration" href="./Login.jsp">Login</a><span class="main-nav__separator"><span></span><span></span><span></span></span></li>
                                                <% } %>
                                    <!--<li><a style="color:white" class="no-decoration" href="contacts.jsp">Contact</a><span class="main-nav__separator"><span></span><span></span><span></span></span></li>-->

                                    <li class="dropdown">
                                        <a style="color: white" class="no-decoration dropdown-toggle" data-toggle="dropdown" href="home-main.html">Menu <i class="fa fa-angle-down"></i></a>
                                        <span class="main-nav__separator"><span></span><span></span><span></span></span>
                                        <ul class="dropdown-menu">
                                            <li><a style="color:white" href="./about.jsp">About us</a></li>
                                            <li><a style="color:white" href="./contacts.jsp">Contact us</a></li>
                                            <li><a style="color:white" href="./blog.jsp">Blog</a></li>
                                        </ul>
                                    </li>


                                    <div class="search-form-modal transition">
                                        <form action="./SearchBikes.jsp" method="get" class="navbar-form header_search_form">
                                            <i class="fa fa-times search-form_close"></i>
                                            <div class="form-group">
                                                <input type="text" name="search" class="form-control" placeholder="Search">
                                            </div>
                                            <button type="submit" class="btn btn_search customBgColor">Search</button>
                                        </form>
                                    </div>

                                    <li class="dropdown">

                                        <%
                                            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
                                            if (session.getAttribute("emailid") == null) {
                                                response.sendRedirect("Login.jsp");
                                            } else {

                                                String email = (String) session.getAttribute("emailid");
                                                User u = new User();
                                                UserImpl uimpl = new UserImpl();
                                                u = uimpl.getDataByEmailId(email);
                                        %>
                                        <a style="color: white" class="no-decoration dropdown-toggle" data-toggle="dropdown" href="UserProfile.jsp"><i class="fa fa-user fa-fw"></i><%=u.getName()%></a>

                                        <span class="main-nav__separator"><span></span><span></span><span></span></span>
                                        <ul class="dropdown-menu">
                                            <li><a style="color:white" href="./ProfileDetails.jsp">Profile</a></li>
                                            <li><a style="color:white" href="./Orders.jsp">Orders</a></li>
                                            <li><a style="color:white" href="./UserLogout">Logout</a></li>
                                        </ul>
                                    </li>
                                    <%   }%>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </body>
</html>
