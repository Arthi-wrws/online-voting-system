<%-- 
    Document   : count
    Created on : 28 Dec 2025, 4:59:59 pm
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
            String username = (String) session.getAttribute("username");
            if (username == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            String candidateId = request.getParameter("candidate");
            if (candidateId == null || candidateId.equals("")) {
                out.println("Error: candidateId missing");
                return;
            }

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdb", "root", "root");

            // Check voter status
            PreparedStatement check = conn.prepareStatement("SELECT has_voted FROM users WHERE username=?");
            check.setString(1, username);
            ResultSet rs = check.executeQuery();
            rs.next();

            if (rs.getInt("has_voted") == 1) {
                response.sendRedirect("alreadyvoted.jsp");
                return;
            }

            // Increase vote count
            PreparedStatement updateVote
                    = conn.prepareStatement("UPDATE candidate SET `votes` = `votes` + 1 WHERE id=?");
            updateVote.setString(1, candidateId);

            int changed = updateVote.executeUpdate();
            if (changed == 0) {
                out.println("No candidate found with ID: " + candidateId);
                return;
            }
            //updateVote.executeUpdate();

            // Block user from voting again
            PreparedStatement updateUser
                    = conn.prepareStatement("UPDATE users SET has_voted=1 WHERE username=?");
            updateUser.setString(1, username);
            updateUser.executeUpdate();

            conn.close();
            response.sendRedirect("thankyou.jsp");
        %>
        <script>
            alert("Your vote has been submitted!");
            window.location.href = "thankyou.jsp";
        </script>

    </body>
</html>
