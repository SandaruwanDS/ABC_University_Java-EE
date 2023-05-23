/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import bean.Degree;


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
import java.util.ArrayList;
import java.util.List;
import util.DatabaseConnection;

/**
 *
 * @author PC
 */
@WebServlet(name = "viewDegreeController", urlPatterns = {"/viewDegree"})
public class viewDegreeController extends HttpServlet {
    Connection con;
    PreparedStatement pst;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("SELECT * FROM degree");
            ResultSet rs = pst.executeQuery();

            List<Degree> degreeList = new ArrayList<>();
            while (rs.next()) {
                Degree degree = new Degree();
                degree.setDegreeCode(rs.getString("degree_code"));
                degree.setDegreeName(rs.getString("degree_name"));
                degree.setDegreeDuration(rs.getInt("degree_duration"));
                degree.setDegreeCredits(rs.getInt("degree_credits"));
                degreeList.add(degree);
            }

            con.close();
            pst.close();
            request.setAttribute("degrees", degreeList);
            request.getRequestDispatcher("admin/viewDegree.jsp").forward(request, response);

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }
}
