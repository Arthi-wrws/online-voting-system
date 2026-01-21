<%-- 
    Document   : searchprocess
    Created on : 26 Dec 2025, 5:52:15 pm
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
            .result-card {
                width: 350px;
                margin: 30px auto;
                padding: 20px;
                background: #ffffff;
                border-radius: 12px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.15);
                border-top: 5px solid #3498db;
                font-family: Arial, sans-serif;
            }

            .result-card h2 {
                text-align: center;
                margin-bottom: 18px;
                font-size: 22px;
                color: #2c3e50;
            }

            .result-card p {
                font-size: 16px;
                padding: 6px 0;
                margin: 0;
                color: #333;
            }

            .result-card strong {
                color: #0a74b9;
                font-weight: 600;
            }

            .result-card:hover {
                transform: translateY(-4px);
                transition: 0.3s ease;
                box-shadow: 0 6px 16px rgba(0,0,0,0.2);
            }


        </style>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdb", "root", "root");
                String se_id = (String) request.getParameter("idno");
                String query = "SELECT * FROM users where id =" + se_id;
                Statement stmt = conn.createStatement();
                boolean found = false;
                ResultSet rs = stmt.executeQuery(query);
                if (rs.next()) {
                    found=true;
                    

        %>
        <div class="result-card">
            <h2>🔍 User Details</h2>
            <p><strong>User ID:</strong> <%= rs.getInt("id")%></p>
            <p><strong>Username:</strong> <%= rs.getString("username")%></p>
            <p><strong>Password:</strong> <%= rs.getString("password")%></p>
            <p><strong>Role:</strong> <%= rs.getString("role")%></p>
        </div>
        <%
                }

                if (!found) {
                    out.println("<div class='no-record'>❌ No records found</div>");

                }

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
