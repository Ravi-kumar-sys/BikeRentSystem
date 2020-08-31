
package com.wst.controler;

import com.wst.bean.Bike;
import com.wst.bean.Booking;
import com.wst.bean.BookingDetails;
import com.wst.model.BikeImpl;
import com.wst.model.BookingDetailsImpl;
import com.wst.model.BookingImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
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

public class PaymentEmail extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
       HttpSession s=request.getSession();
      String email=(String)s.getAttribute("emailid");
        
        Booking b=new Booking();
        BookingImpl bimpl=new BookingImpl();
        b= bimpl.getcurrentBooking(email);
        
        
        BookingDetailsImpl td = new BookingDetailsImpl();
                                BookingDetails bd1 = td.getDataByBookingdId(b.getBooking_details_id());
                                
                                BikeImpl bk = new BikeImpl();
                                Bike bike = bk.getDataByBikeId(b.getBooking_bike_id());  
        
        
        
        
        String from="bikersbrotherhood123@gmail.com";
        
        Properties properties=new Properties();
        properties.put("mail.smtp.auth","true");
        properties.put("mail.smtp.starttls.enable","true");
        properties.put("mail.smtp.host","smtp.gmail.com");
        properties.put("mail.smtp.port",587);
        
       /* Session session=Session.getInstance(properties,new javax.mail.Authenticator()
        {
            protected PasswordAuthentication getPasswordAuthentication()
            {
                return new PasswordAuthentication("bikersbrotherhood123@gmail.com","mca4182@");
            }
        });
        try{
            MimeMessage message=new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
            message.setSubject("Customer Booking Details");
            message.setText("Your bike is successfully booked, Booking Details: Booking Name: "+bd1.getBookingd_name()+", Bike Name: "+bike.getBike_name()+", Booking From: "+b.getBooking_pickup_date()+", Booking Till: "+b.getBooking_drop_date()+".....   All the Best For Your Ride");
            Transport.send(message);
            System.out.println("sent message successfully");
        }catch(MessagingException me)
        {
           me.printStackTrace();
        }
        
        response.sendRedirect("./payuform.jsp");
        */
        
        
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PaymentEmail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentEmail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
