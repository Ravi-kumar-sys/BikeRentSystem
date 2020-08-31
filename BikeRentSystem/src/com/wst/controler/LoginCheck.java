
package com.wst.controler;

import com.wst.bean.User;
import com.wst.model.UserImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginCheck extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String email=request.getParameter("email").trim();
         String pass=request.getParameter("password").trim();
         
         if((email=="" || email.isEmpty() ) || (pass=="" || pass.isEmpty() ))
         {
         response.sendRedirect("Login.jsp?error=201");         
         }
         else{
             User u= new User();
             
             try{
                 u.setEmailid(email);
                 u.setPassword(pass);
                 u=new UserImpl().loginCheck(u);
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }         
             if(u!=null)
             {
                 HttpSession session=request.getSession();
                 session.setAttribute("emailid", email);
                response.sendRedirect("Homepage.jsp");            
             }
             else{
             response.sendRedirect("Login.jsp?error=202");            
             }
         }
    
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginCheck</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginCheck at " + request.getContextPath() + "</h1>");
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
