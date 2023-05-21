/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
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
    PreparedStatement pst;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPhone = request.getParameter("userPhone");
        String userNic = request.getParameter("userNic");
        String userPwd = request.getParameter("userPwd");

        PrintWriter out = response.getWriter();

        Connection con;
        try {
            String encryptedPwd = PasswordEncryptor.encryptPassword(userPwd);

            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("INSERT INTO users(userName,userEmail,userPhone,userNic,userPwd) VALUES (?,?,?,?,?)");

            pst.setString(1, userName);
            pst.setString(2, userEmail);
            pst.setInt(3, Integer.parseInt(userPhone));
            pst.setString(4, userNic);
            pst.setString(5, encryptedPwd);
            pst.executeUpdate();

            con.close();
            pst.close();

        } catch (SQLException ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1>Something Went Wrong!!!</h1>");
        }

        String message = "Success";

        request.setAttribute("successMessage", message);
        response.sendRedirect(request.getContextPath() + "/admin/addUsers.jsp?success=true");

    }
}
