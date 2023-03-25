/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
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
       
        PrintWriter out = response.getWriter();
        Connection con;
        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p","root","");
            pst = con.prepareStatement("SELECT * FROM users WHERE userEmail=? AND userPwd=?");
        
            pst.setString(1, userEmail);
            pst.setString(2, userPwd); 
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
       
    }

    

    }
