
package com.wst.controler;

import com.wst.bean.User;
import com.wst.model.UserImpl;
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

public class UserReg extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String name=request.getParameter("name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String cpassword=request.getParameter("cpassword");
        String mobile=request.getParameter("mobile");
        
        if(password.equals(cpassword))
        {
            User u= new User();
            u.setName(name);
            u.setEmailid(email);
            u.setPassword(password);
            u.setMobile_no(mobile);
            u.setUsertype(0);
            u.setStatus(0);
            int userid=0;
            try{
            userid=new UserImpl().regUser(u);
            }catch(Exception e){e.printStackTrace();}
            if(userid>0)
            {
                response.sendRedirect("./Login.jsp");
            }
            else{
                response.sendRedirect("./Registration.jsp?error=102");
            }
        
        }else{
        System.out.println("Password :"+password);
            System.out.println("cPassword :"+cpassword);
            response.sendRedirect("./Registration.jsp?error=101");
        }
    
        
        /*------------------------------------------------------------------------------------*/
      
        User user=new User();
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
            message.setSubject("Welcome to BikersBrotherhood");
            message.setText("Welcome to BikersBrotherhood family,"+user.getName()+",  Book bike on rent and enjoy rides.");
            Transport.send(message);
            System.out.println("sent message successfully");
        }catch(MessagingException me)
        {
           me.printStackTrace();
        }*/
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserReg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserReg at " + request.getContextPath() + "</h1>");
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
