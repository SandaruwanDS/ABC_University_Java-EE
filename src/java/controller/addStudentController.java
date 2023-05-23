/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
@WebServlet(name = "addStudentController", urlPatterns = {"/addStudents"})
public class addStudentController extends HttpServlet {
    Connection conn;
    PreparedStatement pst;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentReg = request.getParameter("studentReg");
        String studentName = request.getParameter("studentName");
        String studentEmail = request.getParameter("studentEmail");
        String studentPhone = request.getParameter("studentPhone");
        String studentNic = request.getParameter("studentNic");

        try {
            conn = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            //insert to student table
            pst = conn.prepareStatement("INSERT INTO student(student_number,student_name,student_email,student_phone,student_nic) VALUES (?,?,?,?,?)");
            pst.setString(1, studentReg);
            pst.setString(2, studentName);
            pst.setString(3, studentEmail);
            pst.setString(4, studentPhone);
            pst.setString(5, studentNic);
            pst.executeUpdate();

            conn.close();
            pst.close();
            response.sendRedirect(request.getContextPath() + "/admin/addStudent.jsp?success=true");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
