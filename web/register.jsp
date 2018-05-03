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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
