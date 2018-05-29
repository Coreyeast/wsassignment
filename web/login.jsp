<%-- 
    Document   : login
    Created on : 27/04/2018, 12:25:11 PM
    Author     : Corey's-PC
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
    </head>
    
    <body>
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are not logged in
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
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
                            <input name="" type="submit" value="Login">
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
