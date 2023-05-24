/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import util.DatabaseConnection;
import static java.lang.System.out;
import javax.servlet.ServletException;
/**
 *
 * @author PC
 */
@WebServlet(name = "editSubjectController", urlPatterns = {"/editSubject"})
public class editSubjectController extends HttpServlet {
    PreparedStatement pst;
    Connection con;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String subjectCode = request.getParameter("subject_code");
        String subjectName = request.getParameter("subject_name");
        String subjectCredits = request.getParameter("subject_credits");

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("UPDATE subject SET subject_name = ?, subject_credits = ? WHERE subject_code = ?");
            pst.setString(1, subjectName);
            pst.setInt(2, Integer.parseInt(subjectCredits));
            pst.setString(3, subjectCode);
            pst.executeUpdate();
            con.close();
            pst.close();
        } catch (SQLException ex) {
            out.println("<h1> Something Went Wrong !!! </h1>");
        }

        response.sendRedirect(request.getContextPath() + "/viewAllSubjects?editSuccess=true");
    }
}
