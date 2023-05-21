/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.DatabaseConnection;
/**
 *
 * @author PC
 */
@WebServlet(name = "editUserFormController", urlPatterns = {"/editUserForm"})
public class editUserFormController extends HttpServlet {

    PreparedStatement pst;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userId = request.getParameter("userId");
        Connection con;

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("SELECT * FROM users WHERE userid = ?");
            pst.setInt(1, Integer.parseInt(userId));
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                request.setAttribute("userId", Integer.toString(rs.getInt("userid")));
                request.setAttribute("userName", rs.getString("userName"));
                request.setAttribute("email", rs.getString("userEmail"));
                request.setAttribute("phone", rs.getString("userPhone"));
                request.setAttribute("nic", rs.getString("userNic"));
            }
            con.close();
            pst.close();
            request.getRequestDispatcher("admin/editUser.jsp").forward(request, response);

        } catch (SQLException | ServletException e) {
            throw new RuntimeException(e);
        }

    }

}
