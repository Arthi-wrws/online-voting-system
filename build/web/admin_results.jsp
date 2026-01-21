<%-- 
    Document   : admin_results
    Created on : 29 Dec 2025, 6:52:09 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Election Results - Admin</title>
        <style>
            body {
                font-family: Arial;
                background:#f8f8f8;
                padding-top:40px;
                text-align:center;
            }
            table {
                width:50%;
                margin:auto;
                border-collapse: collapse;
                background:white;
            }
            th, td {
                padding:12px;
                border:1px solid #ccc;
            }
            th {
                background:#333;
                color:white;
            }
            h2 {
                margin-bottom:20px;
            }
            button {
                padding:8px 20px;
                background:#d9534f;
                color:white;
                border:none;
                margin-top:15px;
                cursor:pointer;
            }
            button:hover {
                background:#b52b27;
            }
        </style>
    </head>
    <body>
        <h2>🏆 Election Results – Admin Panel</h2>

        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/votingdb", "root", "root");

                // Show vote count
                String query = "SELECT id, candidate_name, party_name, votes FROM candidate";
                PreparedStatement ps = conn.prepareStatement(query);
                ResultSet rs = ps.executeQuery();
        %>

        <table>
            <tr>
                <th>ID</th>
                <th>Candidate</th>
                <th>Party</th>
                <th>Count</th>
            </tr>

            <%
                int totalVotes = 0;
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("candidate_name");
                    String party = rs.getString("party_name");
                    int votes = rs.getInt("votes");
                    totalVotes += votes;
            %>

            <tr>
                <td><%= id%></td>
                <td><%= name%></td>
                <td><%= party%></td>
                <td><%= votes%></td>
            </tr>

            <% }%>

        </table>

        <br>
        <h3>🧮 Total Votes Cast: <%= totalVotes%></h3>

        <br><br>
        <form action="logout.jsp" method="post">
            <button type="submit">Logout</button>
        </form>

        <%
                conn.close();
            } catch (Exception e) {
                out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
            }
        %>
    </body>
</html>
