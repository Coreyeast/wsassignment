<%-- 
    Document   : login
    Created on : 27/04/2018, 12:25:11 PM
    Author     : Corey's-PC
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="loginAction.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <label for="Email">Email</label>
                        </td>
                        <td>
                            <input name="email" type="text" value>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="Password">Password</label>
                        </td>
                        <td>
                            <input name="password" type="password" value>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for></label>
                        </td>
                        <td>
                            <input name type="submit" value="Login">
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
