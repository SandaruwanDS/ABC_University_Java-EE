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
import java.sql.SQLException;
import util.DatabaseConnection;
/**
 *
 * @author PC
 */
@WebServlet(name = "AddSubjectController", urlPatterns = {"/addSubject"})
public class addSubjectController extends HttpServlet {
    Connection conn;
    PreparedStatement pst;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String subjectCode = request.getParameter("subject_code");
        String subjectName = request.getParameter("subject_name");
        String subjectCredits = request.getParameter("subject_credits");

        try {
            conn = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            String quary = "INSERT INTO subject (subject_code, subject_name, subject_credits) VALUES (?, ?, ?)";
            pst = conn.prepareStatement(quary);
            pst.setString(1, subjectCode);
            pst.setString(2, subjectName);
            pst.setInt(3, Integer.parseInt(subjectCredits));


            // Execute SQL statement
            int rowsAffected = pst.executeUpdate();

            if (rowsAffected == 1) {
                // Redirect to success page
                response.sendRedirect(request.getContextPath() + "/admin/addSubject.jsp?success=true");
            } else {
                // Redirect to error page
                response.sendRedirect(request.getContextPath() + "/admin/addSubject.jsp?success=false");
            }

        } catch (SQLException ex) {
            // Redirect to error page with error message
            ex.printStackTrace();
            ;
        } finally {
            // Close resources
            try {
                if (pst != null) {
                    pst.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

    }
}
