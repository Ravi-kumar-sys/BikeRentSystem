
package com.wst.controler;

import com.wst.bean.Tariff;
import com.wst.bean.TariffDetails;
import com.wst.model.TariffImpl;
import com.wst.model.TariffdImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TariffD extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       TariffDetails td=new TariffDetails();
       Tariff t=new Tariff();
       
       t.setTariff_name(request.getParameter("Tariff_name"));
       t.setTariff_Details(request.getParameter("Tariff_Details"));
       t.setTariff_status(Integer.parseInt(request.getParameter("Tariff_status")));
       TariffImpl timpl=new TariffImpl();
        int res=0;
        res=timpl.insertData(t);
        System.out.println(res);
       
        int tid=0;
        try {
            tid=new TariffImpl().getLastId();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        td.setTariff_id(tid);
        td.setTd_duration(Integer.parseInt(request.getParameter("Td_duration")));
        td.setTd_tariff_amount(Double.parseDouble(request.getParameter("Td_tariff_amount")));
        td.setTd_rideLimit(Integer.parseInt(request.getParameter("Td_rideLimit")));
        td.setTd_afterLimit_amount(Double.parseDouble(request.getParameter("Td_afterLimit_amount")));
        td.setTd_afterLimit_km(Integer.parseInt(request.getParameter("Td_afterLimit_km")));
        td.setTd_afterLimit_unit_charge(Double.parseDouble(request.getParameter("Td_afterLimit_unit_charge")));
        
        TariffdImpl tdimpl=new TariffdImpl();
        
        int result=0;
        result=tdimpl.insertData(td);
        System.out.println(result);
        
        if(res>0 && result>0)
        {
            response.sendRedirect("Admin/AllTariffDetail.jsp");
        }
        
        
        
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TariffD</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TariffD at " + request.getContextPath() + "</h1>");
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
