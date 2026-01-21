<%-- 
    Document   : alreadyvoted
    Created on : 29 Dec 2025, 6:46:18 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Already Voted</title>
    </head>

    <body style="font-family: Arial; text-align:center; margin-top: 80px;">
        <h2 style="color:red;">⚠ You have already cast your vote!</h2>
        <p>You cannot vote again. Your voting session is closed.</p>

        <a href="logout.jsp">
            <button style="padding: 8px 25px; background:red; color:white;">Logout</button>
        </a>
    </body>
</html>
