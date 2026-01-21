<%-- 
    Document   : thankyou
    Created on : 29 Dec 2025, 5:59:27 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vote Submitted</title>
        <style>
            body {
                background: #f4f4f9;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                font-family: Arial, sans-serif;
            }
            .box {
                background: white;
                padding: 30px;
                border-radius: 10px;
                width: 400px;
                text-align: center;
                box-shadow: 0px 2px 10px rgba(0,0,0,0.2);
            }
            h2 {
                color: green;
            }
        </style>
    </head>
   <body>
    <div class="box">
        <h2>Thank You!</h2>
        <p>Your vote has been successfully submitted.</p>
        <p>You may now close this window.</p>
    </div>
       <script>
        setTimeout(function(){
            window.close();
        }, 5000);
    </script>
</body>
</html>
