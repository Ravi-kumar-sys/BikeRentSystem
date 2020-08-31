
package com.wst.controler;

import com.wst.bean.Booking;
import com.wst.bean.BookingDetails;
import com.wst.model.BookingDetailsImpl;
import com.wst.model.BookingImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateBookingById extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Booking b=new Booking();       
        //SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy hh:mm:ss");
        b.setBooking_pickup_date(request.getParameter("pickupdate"));
        b.setBooking_pickup_time(request.getParameter("pickuptime"));
        b.setBooking_drop_date(request.getParameter("dropdate"));
        b.setBooking_drop_time(request.getParameter("droptime"));
   
        int result=0;
        BookingImpl bimpl=new BookingImpl();
        bimpl.updateBookingDataById(b);
        
        
  /*--------------------------------------------------------------------------------------------*/      
        
        BookingDetails bd=new BookingDetails();
        
        //bd.setBookingd_phone(request.getParameter("Bookingd_phone"));
        bd.setBookingd_dlno(request.getParameter("Bookingd_dlno"));
       
        BookingDetailsImpl bdimpl=new BookingDetailsImpl();
        int result1=0;
        result=bdimpl.updateBookingdDataById(bd);
  
        if(result>0 && result1>0)
        {
            response.sendRedirect("./Homepage.jsp");
        }
        else{
            response.sendRedirect("./UpdateBookingData.jsp");
        }
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateABookingStatus</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateABookingStatus at " + request.getContextPath() + "</h1>");
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
