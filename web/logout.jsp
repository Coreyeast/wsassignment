<%-- 
    Document   : logout
    Created on : 27/04/2018, 12:26:31 PM
    Author     : Corey's-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <% 	
    session.invalidate();
    %>
    <body>
         <%-- //WHEN THE PERSON IS NOT A LISTER (NOT LOGGED IN)--%>
        
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are not logged in
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
        <h1>Book Site</h1>
        <p>You have been logged out. Click <a href="index.jsp">here</a> to return to the main page.</p>
    </body>
</html>
