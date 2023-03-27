/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import beans.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;  
import java.security.MessageDigest;  
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



@WebServlet(name = "registerController", urlPatterns = {"/registerController"})
public class registerController extends HttpServlet {
 
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
        
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPhone = request.getParameter("userPhone");
        String userNic = request.getParameter("userNic");
        String userPwd = request.getParameter("userPwd");
        String userRole = "user";
        String errorMsg = null;
        String encryptedPwd = null;

         // Server-side form validation
        if (userName == null || userName.trim() .isEmpty() ) {
            errorMsg = "Please enter a valid user name.";
        } else if (userEmail == null || !userEmail.matches("^[\\w.-]+@[\\w.-]+\\.[a-zA-Z]{2,}$")) {
            errorMsg = "Please enter a valid email address.";
        } else if (userPhone == null || !userPhone.matches("^\\d{10}$")) {
            errorMsg = "Please enter a valid phone number.";
        } else if (userNic == null || !userNic.matches("^\\d{9}[Vv]$")) {
            errorMsg = "Please enter a valid NIC number.";
        } else if (userPwd == null || userPwd.length() < 8 ||  userPwd.trim().isEmpty() ) {
            errorMsg = "Please enter a valid password.";
        }

        if (errorMsg == null) {
        
        
            
        
                PrintWriter out = response.getWriter();   
                Connection con;
                try {
                    con = DatabaseConnection.connectToDatabase ("jdbc:mysql://localhost/abc_university_p","root","");
                    
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
                    
                    
                    
                    
                    pst = con.prepareStatement("INSERT INTO users(userName,userEmail,userPhone,userNic,userPwd,userRole) VALUES (?,?,?,?,?,?)");
                    pst.setString(1,userName);
                    pst.setString(2,userEmail);
                    pst.setInt(3,Integer.parseInt(userPhone));
                    pst.setString(4,userNic);
                  //  pst.setString(5,userPwd);
                    pst.setString(5,encryptedPwd);
                    pst.setString(6,userRole);
                    pst.executeUpdate();

                } catch (SQLException ex) {
                    Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
                    out.println("<h1> Somthing Went Wrong !!! </h1>");
                    return;
                }
                //response.sendRedirect("login.jsp");
               // out.println("<h1> DONE !!! </h1>");
               request.setAttribute("Message", "Hello " + userName + " your registration is successful. Now"
                        + " you can login to the system");
                request.getRequestDispatcher("login.jsp").forward(request, response);

        
        
        } else {
            request.setAttribute("errorMsg", errorMsg);
            
            
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script type='text/javascript'> alert ('check your Search Condition'); </script>");
            request.getRequestDispatcher("register.jsp").forward(request, response);
                     
        }    
    }
}
