/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
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


@WebServlet(name = "registercontroller", urlPatterns = {"/registerController"})
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

        PrintWriter out = response.getWriter();   
//        out.println(userName); check data catch
//        out.println(userEmail);
//        out.println(userPhone);
//        out.println(userNic);
//        out.println(userPwd);

        Connection con;
        try {
            con = DatabaseConnection.connectToDatabase ("jdbc:mysql://localhost/abc_university_p","root","");
        
            pst = con.prepareStatement("INSERT INTO users(userName,userEmail,userPhone,userNic,userPwd,userRole) VALUES (?,?,?,?,?,?)");

            pst.setString(1,userName);
            pst.setString(2,userEmail);
            pst.setInt(3,Integer.parseInt(userPhone));
            pst.setString(4,userNic);
            pst.setString(5,userPwd);
            pst.setString(6,userRole);
            pst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1> Somthing Went Wrong !!! </h1>");
        }
        //response.sendRedirect("login.jsp");
       // out.println("<h1> DONE !!! </h1>");
       request.setAttribute("Message", "Hello " + userName + " your registration is successful. Now"
                + " you can login to the system");
        request.getRequestDispatcher("login.jsp").forward(request, response);

    }
}
