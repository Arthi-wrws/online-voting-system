<%-- 
    Document   : voter
    Created on : 26 Dec 2025, 5:16:48 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            h2 {
                text-align: center;
                margin-top: 30px;
                font-size: 24px;
                color: #333;
            }

            form {
                width: 360px;
                background: #ffffff;
                margin: 30px auto;
                padding: 25px;
                border-radius: 10px;
                box-shadow: 0px 2px 10px rgba(0,0,0,0.1);
                text-align: left;
            }

            input[type="radio"] {
                margin-right: 10px;
                transform: scale(1.2);
                cursor: pointer;
            }

            label {
                font-size: 16px;
                margin-bottom: 12px;
                display: block;
                cursor: pointer;
            }

            input[type="submit"] {
                width: 100%;
                padding: 12px;
                background: #28a745; /* Green button for voting */
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 17px;
                font-weight: bold;
                cursor: pointer;
                margin-top: 20px;
                transition: 0.3s;
            }

            input[type="submit"]:hover {
                background: #1e7e34; /* Darker green on hover */
            }
        </style>

    </head>
    <body>
        <h2>Vote Here</h2>
        <form action="count.jsp" method="post">
            <%
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdb", "root", "root");

                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM candidate");
                while (rs.next()) {
            %>
            <label>
                <input type="radio" name="candidate" value="<%= rs.getInt("id")%>" required>
                <%= rs.getString("candidate_name")%>
            </label>
            <%
                }
                conn.close();
            %>

            <input type="submit" value="VOTE">
        </form>

    </body>
</html>
