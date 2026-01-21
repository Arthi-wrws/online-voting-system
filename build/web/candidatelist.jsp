<%-- 
    Document   : candidatelist
    Created on : 26 Dec 2025, 6:52:09 pm
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

            .link-box {
                width: 300px;
                background: white;
                padding: 25px;
                margin: 40px auto;
                border-radius: 10px;
                text-align: center;
                box-shadow: 0px 2px 8px rgba(0,0,0,0.15);
            }

            .link-box h2 {
                margin-bottom: 20px;
                color: #222;
                font-size: 22px;
            }

            .link-box a {
                display: block;
                text-decoration: none;
                color: white;
                background: #28a745;
                padding: 12px;
                border-radius: 6px;
                margin-bottom: 12px;
                font-size: 16px;
                font-weight: bold;
                transition: 0.3s;
            }

            .link-box a:hover {
                background: #1f7e35;
                transform: translateY(-2px);
            }

            .link-box a.delete {
                background: #dc3545;  /* red for delete */
            }

            .link-box a.delete:hover {
                background: #b92c38;
            }
        </style>
    </head>
    <body>
        <div class="link-box">
            <h2>Manage Candidates</h2>

            <a href="showcandidate.jsp">📄 Candidate List</a>
            <a href="addcandidate.jsp">➕ Add Candidate</a>
            <a href="deletecandidate.jsp" class="delete">🗑️ Delete Candidate</a>
        </div>
    </body>
</html>
