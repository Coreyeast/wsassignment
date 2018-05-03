<%-- 
    Document   : logout
    Created on : 27/04/2018, 12:26:31 PM
    Author     : Corey's-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <% 	
    session.invalidate();
    %>
    <body>
        <p>You have been logged out. Click <a href="index.jsp">here</a> to return to the main page.</p>
    </body>
</html>
