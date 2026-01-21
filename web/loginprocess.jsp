<%-- 
    Document   : loginprocess
    Created on : 26 Dec 2025, 5:06:26 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/votingdb", "root", "root");

                String query = "SELECT role, has_voted FROM users WHERE username=? AND password=?";
                PreparedStatement ps = conn.prepareStatement(query);
                ps.setString(1, username);
                ps.setString(2, password);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    String role = rs.getString("role");
                    int voted = rs.getInt("has_voted");   // <-- read has_voted column (0/1)

                    if ("admin".equals(role)) {
                        response.sendRedirect("admin.jsp");
                    } else {
                        // voter login
                        if (voted == 1) {
                            out.println("<script>alert('You have already voted! Login blocked.'); window.location='index.jsp';</script>");
                        } else {
                            session.setAttribute("username", username);  // store session
                            response.sendRedirect("voter.jsp");
                        }
                    }

                } else {
                    out.println("<p style='color:red;text-align:center;'>Invalid Username or Password</p>");
                }

            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %>

    </body>
</html>
