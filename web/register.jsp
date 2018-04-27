<%-- 
    Document   : Register
    Created on : 23/03/2018, 11:11:13 AM
    Author     : 12578720
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
        <form action="welcome.jsp" method="post">
            <table>
                
                <tr><td> Email: </td> <td> <input type="text" name="email"/></td></tr>
                <tr><td> Full name: </td> <td> <input type="text" name="name"/></td></tr>
                <tr><td> Password: </td> <td> <input type="password" name="password" /></td></tr>
              
                <tr><td>Agree to TOS</td> <td> <input type="checkbox" name="tos"/></td></tr>
       
                <tr><td></td> <td> <input type="submit" value="Register"/></td></tr>
           
            </table>
            
            
        </form>
    </body>
</html>
