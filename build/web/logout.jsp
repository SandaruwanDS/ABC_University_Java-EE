<%-- 
    Document   : logout
    Created on : Mar 25, 2023, 4:18:09 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(session.getAttribute("user") != null || session.getAttribute("admin") != null ){
        session.invalidate();
        response.sendRedirect("login.jsp");
    }
%>
