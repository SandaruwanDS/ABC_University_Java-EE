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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import util.DatabaseConnection;
import static java.lang.System.out;
import javax.servlet.ServletException;

/**
 *
 * @author PC
 */
@WebServlet(name = "editDegreeController", urlPatterns = {"/editDegree"})
public class editDegreeController extends HttpServlet {
    PreparedStatement pst;
    Connection con;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String degreeCode = request.getParameter("degree_code");
        String degreeName = request.getParameter("degree_name");
        String degreeDuration = request.getParameter("degree_duration");
        String degreeCredits = request.getParameter("degree_credits");

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("UPDATE degree SET degree_name = ?, degree_duration = ?, degree_credits = ? WHERE degree_code = ?");
            pst.setString(1, degreeName);
            pst.setInt(2, Integer.parseInt(degreeDuration));
            pst.setInt(3, Integer.parseInt(degreeCredits));
            pst.setString(4, degreeCode);
            pst.executeUpdate();
            con.close();
            pst.close();
        } catch (SQLException ex) {
            out.println("<h1> Something Went Wrong !!! </h1>");
        }

        response.sendRedirect(request.getContextPath() + "/viewDegree?editSuccess=true");
    }

}
