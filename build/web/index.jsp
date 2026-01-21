<%-- 
    Document   : login
    Created on : 26 Dec 2025, 5:04:11 pm
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

            h1 {
                text-align: center;
                margin-top: 60px;
                font-size: 28px;
                color: #333;
            }

            #login {
                width: 340px;
                background: #ffffff;
                margin: 40px auto;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0px 2px 10px rgba(0,0,0,0.1);
                text-align: center;
            }

            #login input[type="text"],
            #login input[type="password"] {
                width: 90%;
                padding: 12px;
                margin: 12px 0;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-size: 15px;
                box-sizing: border-box;
            }

            #login input[type="submit"] {
                width: 100%;
                padding: 12px;
                background: #007bff;
                color: white;
                font-size: 16px;
                font-weight: bold;
                border: none;
                border-radius: 6px;
                cursor: pointer;
                margin-top: 10px;
                transition: 0.3s;
            }

            #login input[type="submit"]:hover {
                background: #0056b3;
            }

            #login input::placeholder {
                color: #999;
                font-style: italic;
            }
        </style>

    </head>
    <body>
        <h1>Login</h1>
        <form action="loginprocess.jsp" id="login" method="post">
            User name: <input type="text" name="username" id="username" placeholder="Enter username" required/><br>
            Password: <input type="password" name="password" id="password" placeholder="Enter password" required/><br>
            <input type="submit" value="Login">
        </form>

    </body>
</html>
