package com.wst.controler;

import com.wst.bean.TopUp;
import com.wst.model.TopUpImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateTopUpData extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         TopUp t=new TopUp();
        
        t.setTopup_id(Integer.parseInt(request.getParameter("Topup_id"))); 
        t.setTopup_name(request.getParameter("Topup_name"));
        t.setTopup_Amount_50km(Double.parseDouble(request.getParameter("Topup_Amount_50km")));
        t.setTopup_Amount_100km(Double.parseDouble(request.getParameter("Topup_Amount_100km")));
        t.setTopup_Amount_150km(Double.parseDouble(request.getParameter("Topup_Amount_150km")));
        t.setTopup_Amount_200km(Double.parseDouble(request.getParameter("Topup_Amount_200km")));
        t.setTopup_Amount_250km(Double.parseDouble(request.getParameter("Topup_Amount_250km")));
        t.setTopup_Amount_300km(Double.parseDouble(request.getParameter("Topup_Amount_300km")));
        t.setTopup_status(Integer.parseInt(request.getParameter("Topup_status")));
        

        
        int result=0;
        TopUpImpl impl=new TopUpImpl();
        try {
            result=impl.updateTopUpDataById(t);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(result>0){
        response.sendRedirect("Admin/AllTopUp.jsp");
        }
        
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateTopUpData</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateTopUpData at " + request.getContextPath() + "</h1>");
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
