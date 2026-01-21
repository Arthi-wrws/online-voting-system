<%-- 
    Document   : result
    Created on : 29 Dec 2025, 6:17:50 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%
    String role = (String) session.getAttribute("role");
    if (!"admin".equals(role)) {
        out.println("Access Denied");
        return;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <h2>Final Election Result</h2>
    <table border="1">
        <tr><th>Candidate</th><th>Total Votes</th></tr>

        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/evoting", "root", "");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM candidates");

            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name")%></td>
            <td><%= rs.getInt("votes")%></td>
        </tr>
        <%
            }
            conn.close();
        %>
    </table>
</body>
</html>
