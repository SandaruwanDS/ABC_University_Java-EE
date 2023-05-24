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
@WebServlet(name = "EditStudentFormController", urlPatterns = {"/editStudentForm"})
public class editStudentFormController extends HttpServlet {

    Connection conn;
    PreparedStatement pst;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentId = request.getParameter("studentId");

        try {

            conn = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");
            pst = conn.prepareStatement("SELECT * FROM student WHERE id = ?");
            pst.setInt(1, Integer.parseInt(studentId));
            rs = pst.executeQuery();

            if (rs.next()) {
                request.setAttribute("studentId", Integer.toString(rs.getInt("id")));
                request.setAttribute("studentNumber", rs.getString("student_number"));
                request.setAttribute("studentName", rs.getString("student_name"));
                request.setAttribute("studentEmail", rs.getString("student_email"));
                request.setAttribute("studentPhone", rs.getString("student_phone"));
                request.setAttribute("studentNic", rs.getString("student_nic"));
            }
            conn.close();
            pst.close();
            request.getRequestDispatcher("admin/editStudent.jsp").forward(request, response);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}
