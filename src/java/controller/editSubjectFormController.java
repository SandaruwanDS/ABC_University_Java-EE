/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import util.DatabaseConnection;
/**
 *
 * @author PC
 */
@WebServlet(name = "editSubjectFormController", urlPatterns = {"/editSubjectForm"})
public class editSubjectFormController extends HttpServlet {
    PreparedStatement pst;
    Connection con;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String subjectCode = request.getParameter("subjectCode");

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");
            pst = con.prepareStatement("SELECT * FROM subject WHERE subject_code = ?");
            pst.setString(1, subjectCode);
            rs = pst.executeQuery();

            if (rs.next()) {
                request.setAttribute("subjectCode", rs.getString("subject_code"));
                request.setAttribute("subjectName", rs.getString("subject_name"));
                request.setAttribute("subjectCredits", Integer.toString(rs.getInt("subject_credits")));
            }
            con.close();
            pst.close();
            request.getRequestDispatcher("admin/editSubject.jsp").forward(request, response);

        } catch (SQLException | ServletException e) {
            throw new RuntimeException(e);
        }
    }
}
