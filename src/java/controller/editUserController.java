/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import util.DatabaseConnection;

/**
 *
 * @author PC
 */
@WebServlet(name = "editUserController", urlPatterns = {"/EditUsers"})
public class editUserController extends HttpServlet {

    PreparedStatement pst;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userId = request.getParameter("userId");
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPhone = request.getParameter("userPhone");
        String userNic = request.getParameter("userNic");

        Connection con;
        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("UPDATE users SET userName = ?, userEmail = ?, userPhone = ?, userNic = ? WHERE userId = ?");
            pst.setString(1, userName);
            pst.setString(2, userEmail);
            pst.setString(3, userPhone);
            pst.setString(4, userNic);
            pst.setInt(5, Integer.parseInt(userId));
            pst.executeUpdate();
            con.close();
            pst.close();
        } catch (SQLException ex) {
            out.println("<h1> Something Went Wrong !!! </h1>");
        }

        response.sendRedirect(request.getContextPath() + "/viewUsers?editSuccess=true");

    }


}
