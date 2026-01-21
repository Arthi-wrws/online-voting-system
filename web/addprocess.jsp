<%-- 
    Document   : addprocess
    Created on : 26 Dec 2025, 5:44:46 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
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

                //select * from userlogin where userid = 1 ;
                String name = (String) request.getParameter("username");
                String password = (String) request.getParameter("password");
                String role = (String) request.getParameter("role");

                String query = "INSERT INTO users (username, password, role) VALUES ('" + name + "', '" + password + "', '" + role + "')";
                Statement stmt = conn.createStatement();
                stmt.executeUpdate(query);
                out.println("<div class='success-box'>✅ Data added successfully</div>");
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
