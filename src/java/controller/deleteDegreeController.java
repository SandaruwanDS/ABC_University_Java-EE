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
@WebServlet(name = "deleteDegreeController", urlPatterns = {"/deleteDegree"})
public class deleteDegreeController extends HttpServlet {
    PreparedStatement pst;
    Connection con;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String degreeCode = request.getParameter("degreeCode");

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("DELETE FROM degree WHERE degree_code = ? ");
            pst.setString(1, degreeCode);
            pst.executeUpdate();

            con.close();
            pst.close();

        } catch (SQLException ex) {
            out.println("<h1> Something Went Wrong !!! </h1>");
        }

        response.sendRedirect(request.getContextPath() + "/viewDegree?success=true");
    }
}
