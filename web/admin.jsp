<%-- 
    Document   : admin
    Created on : 26 Dec 2025, 5:16:40 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
        <style>
            body {
                margin: 0;
                font-family: Arial, sans-serif;
                background: #f2f2f2;
            }

            /* Top Navigation Bar */
            .navbar {
                background: #007bff;
                color: white;
                padding: 12px 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .navbar .title {
                font-size: 20px;
                font-weight: bold;
            }

            .navbar .logout-btn {
                background: #ff4d4d;
                padding: 8px 15px;
                border-radius: 5px;
                color: white;
                font-weight: bold;
                text-decoration: none;
            }

            .navbar .logout-btn:hover {
                background: #cc0000;
            }

            /* Dashboard Cards Box */
            .box {
                text-align: center;
                margin-top: 40px;
            }

            .welcome {
                font-size: 22px;
                font-weight: bold;
                margin-bottom: 5px;
            }

            .small-text {
                font-size: 14px;
                color: gray;
                margin-bottom: 25px;
            }

            /* Links Container */
            .links {
                width: 260px;
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 1px 6px rgba(0,0,0,0.1);
                margin: 20px auto;
                text-align: center;
            }

            .links a {
                display: block;
                padding: 12px;
                margin-bottom: 12px;
                background: #007bff;
                color: white;
                border-radius: 6px;
                text-decoration: none;
                font-size: 16px;
                font-weight: bold;
                transition: 0.3s;
            }

            .links a:hover {
                background: #0056b3;
            }

            /* Footer */
            footer {
                position: fixed;
                bottom: 0;
                width: 100%;
                background: #333;
                color: white;
                text-align: center;
                padding: 8px;
                font-size: 14px;
            }
        </style>

    </head>
    <body>

        <!-- 🔷 Top Navbar -->
        <div class="navbar">
            <div class="title">Admin Dashboard</div>
            <a href="logout.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- 🎉 Welcome Section -->
        <div class="box">
            <p class="welcome">👋 Welcome, Admin!</p>
            <p class="small-text">Use the buttons below to manage voting system</p>
        </div>

        <!-- 🟦 Action Links -->
        <div class="links">
            <a href="voterslist.jsp">👤 Voters List</a>
            <a href="candidatelist.jsp">🗳️ Candidate List</a>
            <a href="admin_results.jsp">📊 View Result</a>
        </div>

        <!-- ⚓ Footer -->
        <footer>
            © 2025 Online Voting System | Developed by Arthi
        </footer>
    </body>
</html>
