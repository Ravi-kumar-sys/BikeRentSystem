
package com.wst.controler;

import com.oreilly.servlet.MultipartRequest;
import com.wst.bean.Bike;
import com.wst.model.BikeImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UpdateBikeData extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        MultipartRequest mr=new MultipartRequest(request,"E:\\NetBeansProjects\\BikeRentSystem\\web\\images");
        
        
       // SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");  
        String date1=mr.getParameter("Bike_RC_RegDate");
        String date2=mr.getParameter("Bike_RC_ExpDate");
        
        
        int result=0;
        Bike b=new Bike();
        
        b.setBike_id(Integer.parseInt(mr.getParameter("Bike_id")));
        b.setBike_name(mr.getParameter("Bike_name"));
        b.setBike_description(mr.getParameter("Bike_description"));
        b.setBike_category(mr.getParameter("Bike_category"));
        b.setBike_company(mr.getParameter("Bike_company"));
        b.setBike_Model(mr.getParameter("Bike_Model"));
        b.setBike_RC_No(mr.getParameter("Bike_RC_No"));
        b.setBike_RC_Name(mr.getParameter("Bike_RC_Name"));
        b.setBike_RC_RegDate(date1);
        b.setBike_RC_ExpDate(date2);
        b.setBike_RC_CHNO(mr.getParameter("Bike_RC_CHNO"));
        b.setBike_RC_EnginNo(mr.getParameter("Bike_RC_EnginNo"));
        b.setBike_YearMfg(mr.getParameter("Bike_YearMfg"));
        b.setBike_NoOfGear(Integer.parseInt(mr.getParameter("Bike_NoOfGear")));
        b.setBike_img("images/"+mr.getOriginalFileName("Bike_img"));
        b.setBike_color(request.getParameter("Bike_color"));
        b.setSelfstart(Integer.parseInt(mr.getParameter("Selfstart")));
        b.setBike_Engin_CC(Integer.parseInt(mr.getParameter("Bike_Engin_CC")));
        b.setTariff_id(Integer.parseInt(mr.getParameter("Tariff_id")));
        b.setTopup_id(Integer.parseInt(mr.getParameter("TopUp_id")));
        b.setPriority(Integer.parseInt(mr.getParameter("Priority")));
        b.setStatus(Integer.parseInt(mr.getParameter("Status")));
        
        
        BikeImpl impl=new BikeImpl();
        try {
            result=impl.updateBikeDataById(b);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(result>0){
        response.sendRedirect("Admin/AllBikes.jsp");
        }
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateBikeData</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateBikeData at " + request.getContextPath() + "</h1>");
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
