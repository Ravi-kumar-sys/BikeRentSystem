
package com.wst.controler;

import com.oreilly.servlet.MultipartRequest;
import com.wst.bean.User;
import com.wst.model.UserImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserProfilePic extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
              MultipartRequest mr=new MultipartRequest(request,"E:\\NetBeansProjects\\BikeRentSystem\\web\\images");
             HttpSession session=request.getSession(false);  
              String emailid = (String) session.getAttribute("emailid");      
              User u=new User();
              u.setProfile_pic("images/"+mr.getOriginalFileName("profile_pic"));
              
              u.setEmailid(emailid);
              
              UserImpl uimpl=new UserImpl();
            try {
                uimpl.updateProfile(u);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
              
            response.sendRedirect("./ProfileDetails.jsp");
              
              
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserProfilePic</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserProfilePic at " + request.getContextPath() + "</h1>");
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
