<%-- 
    Document   : register
    Created on : 03/05/2018, 2:47:33 PM
    Author     : Corey's-PC
--%>

<%@page import="uts.assign.*"%>
<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="diaryApp" class="uts.assign.DiaryApplication" scope="application">
    <jsp:setProperty name="diaryApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%-- 
     We will need to add the DiaryApp stuff here to connect the users the the users.xml file 
     - corey
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are not logged in
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
    </head>
    <body>
        <h1>Register</h1>
        <form action="registerAction.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td> <label for="email">Email</label></td>
                        <td> <input name="email" type="text" value</td>
                    </tr>
                    <tr>
                        <td><label for="name">Full name</label></td>
                        <td> <input name="name" type="text" value</td>
                    </tr>
                    <tr>
                        <td><label for="password">Password</label></td> 
                        <td> <input name="password" type="password" value</td>
                    </tr>
                    <tr>
                        <td><label for="DOB">Date of Birth</label></td> 
                        <td> <input name="DOB" type="date" value</td>
                    </tr>
                    <tr>
                        <td><label for="tos">Agree to TOS</label></td>
                        <td><input name="tos" type="checkbox" value></td>
                    </tr>
                    <tr>
                        <td><label for></label>
                        <td><input name type="submit" value="Register"></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
