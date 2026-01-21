<%-- 
    Document   : searchvoter
    Created on : 26 Dec 2025, 5:39:34 pm
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
                background: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            h1 {
                text-align: center;
                margin-top: 30px;
                font-size: 26px;
                color: #333;
            }

            .form {
                width: 320px;
                background: #ffffff;
                margin: 30px auto;
                padding: 25px;
                border-radius: 10px;
                box-shadow: 0px 2px 8px rgba(0,0,0,0.1);
                text-align: center;
            }

            .form input[type="text"] {
                width: 90%;
                padding: 12px;
                border: 1px solid #ccc;
                margin: 15px 0;
                border-radius: 6px;
                font-size: 15px;
                box-sizing: border-box;
            }

            .form input[type="submit"] {
                width: 100%;
                padding: 12px;
                background: #007bff; /* Blue button */
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                margin-top: 10px;
                transition: 0.3s;
            }

            .form input[type="submit"]:hover {
                background: #0056b3; /* Darker blue on hover */
            }

            .form input::placeholder {
                color: #999;
                font-style: italic;
            }
        </style>

    </head>
    <body>
        <h1>Search Voter</h1>
        <form action="searchprocess.jsp" class="form" method="post">
            ID: <input type="text" name="idno" placeholder="Enter Voter ID" required/><br>
            <input type="submit" value="Search" name="search"/>
        </form>

    </body>
</html>
