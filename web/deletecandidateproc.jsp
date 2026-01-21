<%-- 
    Document   : deletecandidateproc
    Created on : 27 Dec 2025, 11:38:58 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .action-btn {
                text-align: center;
                margin-top: 20px;
            }

            .action-btn a {
                background: #28a745;
                color: white;
                padding: 10px 25px;
                text-decoration: none;
                font-size: 16px;
                font-weight: bold;
                border-radius: 6px;
                display: inline-block;
                transition: 0.3s;
            }

            .action-btn a:hover {
                background: #1e7e34;
            }

        </style>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdb", "root", "root");
                String id = (String) request.getParameter("idno");
                String query = "DELETE FROM candidate WHERE id =" + id + ";";

                Statement stmt = conn.createStatement();
                stmt.executeUpdate(query);
                out.println("<div class='delete-box'>🗑️ Record deleted successfully</div>");

                conn.close();
            } catch (ClassNotFoundException ex) {
                out.println(ex.getMessage());
            } catch (SQLException ex) {
                out.println(ex.getMessage());
            }

        %>
        <div class="action-btn">
            <a href="admin.jsp">🏠 Home</a>
        </div>
    </body>
</html>
