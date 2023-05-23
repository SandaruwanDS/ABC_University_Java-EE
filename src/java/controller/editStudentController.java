/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
@WebServlet(name = "editStudentController", urlPatterns = {"/editStudent"})
public class editStudentController extends HttpServlet {
    Connection con;
    PreparedStatement pst;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentId = request.getParameter("studentId");
        String studentName = request.getParameter("studentName");
        String studentEmail = request.getParameter("studentEmail");
        String studentPhone = request.getParameter("studentPhone");
        String studentNic = request.getParameter("studentNic");

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");
            pst = con.prepareStatement("UPDATE student SET student_name = ?, student_email = ?, student_phone = ?, student_nic = ? "
                    + "WHERE id = ?");
            pst.setString(1, studentName);
            pst.setString(2, studentEmail);
            pst.setString(3, studentPhone);
            pst.setString(4, studentNic);
            pst.setInt(5, Integer.parseInt(studentId));
            pst.executeUpdate();
            con.close();
            pst.close();
            response.sendRedirect(request.getContextPath() + "/viewStudents?editSuccess=true");

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
