<%-- 
    Document   : Register
    Created on : 23/03/2018, 11:11:13 AM
    Author     : 12578720
--%>

<%@page import="uts.wsd.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List a book</h1>
        <form action="main.jsp" method="post">
            <table>
                <tr><td> Title </td> <td> <input type="text" name="title"/></td></tr>
                <tr><td> Abstract </td> <td> <input type="text" name="abstract"/></td></tr>
                <tr><td> Publication information (ISBN etc.) </td> <td> <input type="text" name="pubInfo" /></td></tr>  
                <tr><td> Condition </td> <td> 
                        <select name="condition" >
                            <option value="poor" >Poor</option>
                            <option value="fair">Fair</option>
                            <option value="good">Good</option>
                            <option value="new">New</option>
                        </select>
              
                <tr><td>Agree to TOS</td> <td> <input type="checkbox" name="tos"/></td></tr>
       
                <tr><td></td> <td> <input type="submit" value="Register"/></td></tr>
           
            </table>
            
            
        </form>
    </body>
</html>
