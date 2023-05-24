package controller;

import util.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "deleteStudent", value = "/deleteStudent")
public class deleteStudentController extends HttpServlet {

    Connection conn;
    PreparedStatement pst;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String studentId = request.getParameter("studentId");

        try {
            conn = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");
            pst = conn.prepareStatement("DELETE FROM student WHERE id = ?");
            pst.setInt(1, Integer.parseInt(studentId));
            pst.executeUpdate();
            conn.close();
            pst.close();
            response.sendRedirect(request.getContextPath() + "/viewStudents?success=true");

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
