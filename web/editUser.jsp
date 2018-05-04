<%-- 
    Document   : editUser
    Created on : 27/04/2018, 12:51:31 PM
    Author     : Corey's-PC
--%>

<%@page import="uts.assign.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    User user;
 
    if (session.getAttribute("user") != null) {
 
        boolean submitted = request.getParameter("submitted") != null;
 
        user = (User) session.getAttribute("user");

        if (submitted) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

 
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);
            
        }
%>
<html>
<head>
    <title>edit_user</title>
</head>
<body>
    <h1>Register</h1>
    <form action="editUser.jsp" method="post">

        <table>
            <tbody>
                <tr>    
                        <td> <label for="email">Email</label></td>
                        <td> <input name="email" type="text" value="<%=user.getEmail()%>"</td>
                </tr>
                    <tr>
                        <td><label for="name">Full name</label></td>
                        <td> <input name="name" type="text" value="<%= user.getName() %>"</td>
                    </tr>
                    <tr>
                        <td><label for="password">Password</label></td> 
                        <td> <input name="password" type="password" value="<%=user.getPassword()%>"</td>
                    </tr>
            <tr>

                <td></td>
                <td><input name="submit" type="submit" value="Save"></td>
            </tr>
            </tbody>
        </table>
        <input type="hidden" name="submitted" value="yes"> 
    </form>
    <p>Return to the <a href="index.jsp">main page</a>.</p>
</body>
</html>
<% } %>
