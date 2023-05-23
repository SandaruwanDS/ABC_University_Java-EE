/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
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
@WebServlet(name = "editDegreeFormController", urlPatterns = {"/editDegreeForm"})
public class editDegreeFormController extends HttpServlet {
    PreparedStatement pst;
    Connection con;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String degreeCode = request.getParameter("degreeCode");

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("SELECT * FROM degree WHERE degree_code = ?");
            pst.setString(1, degreeCode);
            rs = pst.executeQuery();

            if (rs.next()) {
                request.setAttribute("degreeCode", rs.getString("degree_code"));
                request.setAttribute("degreeName", rs.getString("degree_name"));
                request.setAttribute("degreeDuration", Integer.toString(rs.getInt("degree_duration")));
                request.setAttribute("degreeCredits", Integer.toString(rs.getInt("degree_credits")));
                con.close();
                pst.close();

            }

            request.getRequestDispatcher("admin/editDegree.jsp").forward(request, response);

        } catch (SQLException | ServletException e) {
            throw new RuntimeException(e);
        }
    }

}
