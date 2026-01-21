<%-- 
    Document   : deletevoter
    Created on : 26 Dec 2025, 5:39:11 pm
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
                padding: 10px;
                border: 1px solid #ccc;
                margin: 15px 0;
                border-radius: 6px;
                font-size: 15px;
            }

            .form input[type="submit"] {
                width: 100%;
                padding: 12px;
                background: #dc3545; /* Red button for delete */
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 17px;
                font-weight: bold;
                cursor: pointer;
                transition: 0.3s;
            }

            .form input[type="submit"]:hover {
                background: #b92c38; /* Darker red on hover */
            }

            /* Optional placeholder styling */
            .form input[type="text"]::placeholder {
                color: #999;
                font-style: italic;
            }
        </style>

    </head>
    <body>
        <h1>Delete Voter</h1>
        <form action="deleteprocess.jsp" class="form" method="post">
            ID no: <input type="text" name="idno" placeholder="Enter ID no" required /><br>
            <input type="submit" value="Delete" name="delete" />
        </form>

    </body>
</html>
