package controller;

import bean.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;  
import java.security.MessageDigest;  
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.PasswordEncryptor;



@WebServlet(name = "registerController", urlPatterns = {"/registerController"})
public class registerController extends HttpServlet {
 
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
        
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPhone = request.getParameter("userPhone");
        String userNic = request.getParameter("userNic");
        String userPwd = request.getParameter("userPwd");
        String userRole = "user";
        String encryptedPwd = null;

        String msg = null;
        boolean success = false;

                PrintWriter out = response.getWriter();   
                Connection con;
                try {
                    con = DatabaseConnection.connectToDatabase ("jdbc:mysql://localhost/abc_university_p","root","");
                    
                    // Password encryption using MD5
                    encryptedPwd = PasswordEncryptor.encryptPassword(userPwd);

                    pst = con.prepareStatement("INSERT INTO users(userName,userEmail,userPhone,userNic,userPwd,userRole) VALUES (?,?,?,?,?,?)");
                    pst.setString(1,userName);
                    pst.setString(2,userEmail);
                    pst.setInt(3,Integer.parseInt(userPhone));
                    pst.setString(4,userNic);
                    pst.setString(5, encryptedPwd);
                    pst.setString(6,userRole);
                    pst.executeUpdate();

                    msg = " Successfully registered. Please login !";
                    success = true;
                    con.close();
                    pst.close();

                } catch (SQLException ex) {
                    Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
                    out.println("<h1> Somthing Went Wrong !!! </h1>");
                    return;
                }

        request.setAttribute("Message", msg);
        request.setAttribute("success", success);
        request.getRequestDispatcher("/login.jsp").forward(request, response);

    }
}
