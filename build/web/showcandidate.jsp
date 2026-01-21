<%-- 
    Document   : showcandidate
    Created on : 27 Dec 2025, 11:19:39 pm
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
            .data-table {
                width: 70%;
                margin: 30px auto;
                border-collapse: collapse;
                font-family: Arial, sans-serif;
                background: #fff;
                box-shadow: 0 4px 10px rgba(0,0,0,0.15);
                border-radius: 8px;
                overflow: hidden;
            }

            .data-table th {
                background-color: #3498db;
                color: white;
                padding: 12px;
                font-size: 18px;
                text-align: center;
            }

            .data-table td {
                padding: 12px;
                text-align: center;
                font-size: 16px;
                color: #333;
                border-bottom: 1px solid #ddd;
            }

            .data-table tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .data-table tr:hover {
                background-color: #f1f1f1;
                transition: .2s;
            }

            .table-title {
                text-align: center;
                font-size: 24px;
                font-weight: 600;
                margin-top: 20px;
                font-family: Arial, sans-serif;
            }

        </style>
    </head>
    <body>
        <%
            try {
                /* TODO output your page here. You may use following sample code. */
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdb", "root", "root");

                //select * from userlogin where userid = 1 ;
                String query = "select * from  candidate ORDER BY id ASC;";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                out.println("<table class='data-table'>");
                out.println("<h2 class='table-title'>Candidate List</h2>");
                out.println("<tr class='table-title'><th>ID</th><th>Name</th><th>Party</th></tr>");

                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getInt(1) + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getString(3) + "</td>");
                    out.println("</tr>");
                }

                out.println("</table>");

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
