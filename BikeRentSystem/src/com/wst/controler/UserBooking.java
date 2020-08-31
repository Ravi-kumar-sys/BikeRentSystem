
package com.wst.controler;

import com.wst.bean.Bike;
import com.wst.bean.Booking;
import com.wst.bean.BookingDetails;
import com.wst.model.BikeImpl;
import com.wst.model.BookingDetailsImpl;
import com.wst.model.BookingImpl;
import java.io.IOException;
import java.util.Date;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
/*import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;*/
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class UserBooking extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
      HttpSession s=request.getSession();
      String email=(String)s.getAttribute("emailid");
        
        BookingDetails bd=new BookingDetails();
       bd.setBookingd_name(request.getParameter("bookingd_name")); 
       bd.setBookingd_email(email);
       bd.setBookingd_phone(request.getParameter("bookingd_phone"));
       bd.setBookingd_dlno(request.getParameter("bookingd_dlno"));
       bd.setBookingd_dob(request.getParameter("bookingd_dob"));
       bd.setBookingd_pickup_type(request.getParameter("bookingd_pickup_type"));
       bd.setBookingd_terms(request.getParameter("bookingd_terms"));
       
       int result1=0;
       BookingDetailsImpl bdimpl=new BookingDetailsImpl();
       result1=bdimpl.insertData(bd);
       System.out.println(result1);
       
/*---------------------------------------------------------------------------------------------------*/
        
        int bdid=0; 
        try {
            bdid=new BookingDetailsImpl().getLastId();
       } catch (SQLException ex) {
            ex.printStackTrace();
        }   
        Booking b=new Booking();
        
       b.setBooking_details_id(bdid);
       b.setBooking_bike_id(Integer.parseInt(request.getParameter("bike_id")));
       b.setBooking_pickup_date(request.getParameter("pickupdate"));
       b.setBooking_pickup_time(request.getParameter("pickuptime"));
       b.setBooking_drop_date(request.getParameter("dropdate"));
       b.setBooking_drop_time(request.getParameter("droptime"));
       b.setBooking_status("Booked");
       int result=0;
       BookingImpl bImpl=new BookingImpl();
       result=bImpl.insertData(b);
       System.out.println(result);
        
    
 /*----------------------------------------------------------------------------------*/      
       
      
                        
                        response.sendRedirect("./Payment.jsp");
       
     
       
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
            processRequest(request, response);
        
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            processRequest(request, response);
        
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
