/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DatabaseConnection;
import util.PasswordEncryptor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
@WebServlet(name = "addUserController", urlPatterns = {"/addUsers"})
public class addUserController extends HttpServlet {

    Connection con;
    PreparedStatement pst;

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

        try {
            String encryptedPwd = PasswordEncryptor.encryptPassword(userPwd);

            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("INSERT INTO users(userName,userEmail,userPhone,userNic,userPwd,userRole) VALUES (?,?,?,?,?,?)");

            pst.setString(1, userName);
            pst.setString(2, userEmail);
            pst.setInt(3, Integer.parseInt(userPhone));
            pst.setString(4, userNic);
            pst.setString(5, encryptedPwd);
            pst.setString(6, userRole);
            pst.executeUpdate();

            con.close();
            pst.close();

        } catch (SQLException ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1>Something Went Wrong!!!</h1>");
        }

        String message = "Success";

        request.setAttribute("successMessage", message);
        response.sendRedirect(request.getContextPath() + "/admin/addUser.jsp?success=true");

    }
}
