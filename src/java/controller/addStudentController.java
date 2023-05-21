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
import util.DatabaseConnection;
/**
 *
 * @author PC
 */
@WebServlet(name = "addStudentController", urlPatterns = {"/addStudent"})
public class addStudentController extends HttpServlet {

    PreparedStatement pst;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentName = request.getParameter("studentName");
        String studentEmail = request.getParameter("studentEmail");
        String studentPhone = request.getParameter("studentPhone");
        String studentNic = request.getParameter("studentNic");

        Connection conn;
        try {
            conn = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");
            //insert data into student table
            pst = conn.prepareStatement("INSERT INTO student(student_name,student_email,student_phone,student_nic) VALUES (?,?,?,?)");
            pst.setString(1, studentName);
            pst.setString(2, studentEmail);
            pst.setString(3, studentPhone);
            pst.setString(4, studentNic);
            pst.executeUpdate();

            conn.close();
            pst.close();
            response.sendRedirect(request.getContextPath() + "/admin/addStudent.jsp?success=true");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
