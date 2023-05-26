/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DatabaseConnection;
/**
 *
 * @author PC
 */
@WebServlet(name = "deleteStudentFromSubject", urlPatterns = {"/deleteStudentFromSubject"})
public class deleteStudentFromSubject extends HttpServlet {
    Connection conn;
    PreparedStatement pst;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String subjectCode = request.getParameter("subjectCode");
        String studentNumber = request.getParameter("studentNumber");

        try {
            conn = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");
            pst = conn.prepareStatement("DELETE FROM student_subject WHERE student_number = ? AND subject_code = ?");
            pst.setString(1, studentNumber);
            pst.setString(2, subjectCode);
            pst.executeUpdate();

            conn.close();
            pst.close();

            response.sendRedirect(request.getContextPath() + "/viewEnrolledStudents?subjectCode=" + subjectCode + "&subDel=true");

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}
