<%-- 
    Document   : index
    Created on : 27/04/2018, 12:51:42 PM
    Author     : Corey's-PC
--%>

<%@page import="uts.assign.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h1>Book Site</h1>
        <%User user =(User)session.getAttribute("user");%>
        <% if (user != null) { %>
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are logged in as <%=user.getName()%> < <%=user.getEmail()%> > 
        </div>
        <div style="text-align: right;"><a href="logout.jsp">Logout</a></div>
        <ul>
            <li>
                <a href="editUser.jsp">My Account</a>
            </li>
        </ul>
        <% } else { %>
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are not logged in
        </div>
        <div style="text-align: right;"><a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
        <% } %>
    </body>
</html>
