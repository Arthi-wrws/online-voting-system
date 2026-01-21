<%-- 
    Document   : voterslist
    Created on : 26 Dec 2025, 6:51:50 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: #f0f2f5;
                margin: 0;
                padding: 0;
            }

            .links {
                width: 300px;
                background: #ffffff;
                padding: 25px;
                margin: 40px auto;
                border-radius: 10px;
                box-shadow: 0px 2px 10px rgba(0,0,0,0.15);
                text-align: center;
            }

            .links h2 {
                margin-bottom: 20px;
                font-size: 22px;
                color: #333;
            }

            .links a {
                display: block;
                text-decoration: none;
                color: white;
                background: #007bff;
                padding: 12px;
                border-radius: 6px;
                margin-bottom: 12px;
                font-size: 16px;
                font-weight: bold;
                transition: 0.3s;
            }

            .links a:hover {
                background: #0056b3;
            }

            .links a.delete {
                background: #dc3545; /* optional red for delete */
            }

            .links a.delete:hover {
                background: #b92c38;
            }
        </style>

    </head>
    <body>
        <div class="links">
            <h2>Voter Management</h2>
            <a href="showvoters.jsp">📄 Show Records</a>
            <a href="addvoters.jsp">➕ Add Record</a>
            <a href="modifyvoter.jsp">✏️ Modify Record</a>
            <a href="deletevoter.jsp" class="delete">🗑️ Delete Record</a>
            <a href="searchvoter.jsp">🔍 Search Record</a>
        </div>

    </body>
</html>
