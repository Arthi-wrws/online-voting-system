<%-- 
    Document   : addcandidate
    Created on : 27 Dec 2025, 11:19:57 pm
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
                background: #f2f2f2;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .form {
                background: white;
                padding: 25px;
                width: 330px;
                border-radius: 10px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            }

            .form input[type="text"],
            .form input[type="number"] {
                width: 100%;
                padding: 10px;
                margin: 8px 0 15px;
                border: 1px solid #ccc;
                border-radius: 6px;
                box-sizing: border-box;
                font-size: 14px;
            }

            .form input[type="submit"] {
                width: 100%;
                padding: 12px;
                background: #007bff;
                border: none;
                border-radius: 6px;
                color: white;
                font-weight: bold;
                font-size: 15px;
                cursor: pointer;
                transition: 0.3s;
            }

            .form input[type="submit"]:hover {
                background: #0056b3;
            }

            .form label {
                font-weight: bold;
                font-size: 14px;
            }
        </style>


    </head>
    <body>
        <form action="addcandidateproc.jsp" class="form">
<!--            <label>Id No:</label>
            <input type="text" name="idno">-->

            <label>Candidate Name:</label>
            <input type="text" name="cname">

            <label>Party Name:</label>
            <input type="text" name="party">

            <input type="submit" value="Add Candidate">
        </form>

    </body>
</html>
