/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Subject;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import util.DatabaseConnection;

/**
 *
 * @author PC
 */
@WebServlet(name = "viewUserSubjectController", urlPatterns = {"/viewUserSubject"})
public class viewUserSubjectController extends HttpServlet {

    Connection con;
    PreparedStatement pst;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_p", "root", "");

            pst = con.prepareStatement("SELECT * FROM subject");
            ResultSet rs = pst.executeQuery();

            List<Subject> subjects = new ArrayList<>();
            while (rs.next()) {
                Subject allsubject = new Subject();
                allsubject.setSubjectCode(rs.getString("subject_code"));
                allsubject.setSubjectName(rs.getString("subject_name"));
                allsubject.setSubjectCredits(rs.getInt("subject_credits"));
                subjects.add(allsubject);
            }

            con.close();
            pst.close();
            request.setAttribute("subjects", subjects);
            request.getRequestDispatcher("user/viewAllSubjects.jsp").forward(request, response);

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }


}
