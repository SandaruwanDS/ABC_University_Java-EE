/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.DatabaseConnection;

/**
 *
 * @author PC
 */
@WebServlet(name = "addDegreeController", urlPatterns = {"/addDegree"})
public class addDegreeController extends HttpServlet {

    Connection con;
    PreparedStatement pst;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String degreeCode = request.getParameter("degree_code");
        String degreeName = request.getParameter("degree_name");
        String degreeDuration = request.getParameter("degree_duration");
        String degreeCredits = request.getParameter("degree_credits");
//        String degreeDescription = request.getParameter("degree_description");

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            String sql = "INSERT INTO degree (degree_code, degree_name, degree_duration, degree_credits) VALUES (?, ?, ?, ?)";
            pst = con.prepareStatement(sql);
            pst.setString(1, degreeCode);
            pst.setString(2, degreeName);
            pst.setInt(3, Integer.parseInt(degreeDuration));
            pst.setInt(4, Integer.parseInt(degreeCredits));
//            pst.setString(5, degreeDescription);
            pst.executeUpdate();

            con.close();
            pst.close();

        } catch (SQLException ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1>Something Went Wrong!!!</h1>");
        }

        String message = "Success";

        request.setAttribute("successMessage", message);
        response.sendRedirect(request.getContextPath() + "/admin/addDegree.jsp?success=true");
    }
}
