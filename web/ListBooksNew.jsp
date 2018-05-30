<%-- 
    Document   : ListBooksNew
    Created on : 29/05/2018, 7:20:31 PM
    Author     : muqadusazam
--%>

<%@page import="uts.assign.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         
    </head>
    
    <body>
        <%User user = (User) session.getAttribute("user");%>

    <%-- //IF THE USER IS LOGGED IN: HEADER --%>
    <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
        You are logged in as <%=user.getName()%> < <%=user.getEmail()%> > 
    </div>
    <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="myBooks.jsp">My Books</a> | <a href="ListBooksNew.jsp">List A book</a> | <a href="logout.jsp">Logout</a></div>
                <h1>List a book</h1>
                <%-- Form to allow users to list a book --%>
        <form action="ListBooksAction.jsp" method="post">
            <table>
                <tr><td> Title: </td> <td> <input type="text" name="title"/></td></tr>
                <tr><td> Author: </td> <td> <input type="text" name="author"/></td></tr>
                <tr><td> Abstract: </td> <td> <input type="text" name="abstract"/></td></tr>
                <tr><td> Publication information (ISBN etc.): </td> <td> <input type="text" name="pubInfo"/> </td></tr>
                 <tr><td> Price: </td> <td> <input type="text" name="price"/> </td></tr>
                <tr><td> Condition: </td> <td> 
                        <select name="condition">
                            <option value="poor" >Poor</option>
                            <option value="fair">Fair</option>
                            <option value="good">Good</option>
                            <option value="new">New</option>
                        </select>

                <tr><td>Agree to TOS</td> <td> <input type="checkbox" name="tos"/></td></tr>
                
                <tr><td></td> <td> <input type="submit" value="Register"/></td></tr>
                <input type="hidden" name="submitted" value="yes">
            </table>
        </form>
    </body>
</html>
