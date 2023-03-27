/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet(name = "loginController", urlPatterns = {"/loginController"})
public class loginController extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userEmail = request.getParameter("userEmail");
        String userPwd = request.getParameter("userPwd");
        String errorMsg = null;
        String encryptedPwd = null;
        
        if (userEmail == null || !userEmail.matches("^[\\w.-]+@[\\w.-]+\\.[a-zA-Z]{2,}$")) {
            errorMsg = "Please enter a valid email address.";
        } else if (userPwd == null || userPwd.length() < 8 ||  userPwd.trim().isEmpty() ) {
            errorMsg = "Please enter a valid password.";
        }

        if (errorMsg == null) {
        
        
        
        
            PrintWriter out = response.getWriter();
            Connection con;
            try {
                con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p","root","");
                
                // Password encryption using MD5
                     try {  
                            MessageDigest md = MessageDigest.getInstance("MD5");
                            md.update(userPwd.getBytes());
                            byte[] digest = md.digest();
                            StringBuilder sb = new StringBuilder();
                            for (byte b : digest) {
                                sb.append(String.format("%02x", b & 0xff));
                            }
                            encryptedPwd = sb.toString();
                    }   
                    catch (NoSuchAlgorithmException e)   
                    {  
                        e.printStackTrace();  
                    }  
                
                
                
                pst = con.prepareStatement("SELECT * FROM users WHERE userEmail=? AND userPwd=?");

                pst.setString(1, userEmail);
                pst.setString(2, encryptedPwd);
               // pst.setString(2, userPwd); 
                ResultSet rs = pst.executeQuery();
                if(rs.next()){
                    String userRole = rs.getString("userRole");
                    HttpSession session = request.getSession();
    //                session.setAttribute("UE", userEmail);

                     if(userRole.equals("admin")) {
                        session.setAttribute("admin", userEmail);
                        request.setAttribute("message","Hello admin " + userEmail);
                        response.sendRedirect("admin.jsp");
                    } else {
                        session.setAttribute("user", userEmail);
                        request.setAttribute("message","Hello " + userEmail);
                        response.sendRedirect("home.jsp");
                    } 



                }else{
                     request.setAttribute("Message", "Login Failed please check your User Email and Password");
                     request.getRequestDispatcher("login.jsp").forward(request, response);
                }


             } catch (SQLException ex) {
                Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
                out.println("<h1>Something Went Wrong!!!</h1>");
            }
       
        } else {
            request.setAttribute("errorMsg", errorMsg);
            
            
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script type='text/javascript'> alert ('check your Search Condition'); </script>");
            request.getRequestDispatcher("login.jsp").forward(request, response);
                     
        }    

    
    
}
}
