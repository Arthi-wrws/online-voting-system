<%-- 
    Document   : logout
    Created on : 2 Jan 2026, 2:10:29 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            // Invalidate the current session
            if (session != null) {
                session.invalidate();
            }

            // Redirect to login page
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
