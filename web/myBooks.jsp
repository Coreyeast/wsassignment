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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        
        <%User user = (User) session.getAttribute("user");%>
       <%-- //IF THE USER IS LOGGED IN --%>
        
        <% if (user != null) {
        String userEmail = user.getEmail();%>
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are logged in as <%=user.getName()%> < <%=user.getEmail()%> > 
        </div>
        <div style="text-align: right;"><a href="logout.jsp">Logout</a></div>
        <h1>Book Site</h1>
        <ul>
            <li>
                <a href="Listbooks.jsp">List A book</a>
               <%--<a href="reserved.jsp"> View reservations </a>*/ --%>
            </li>
        </ul>
        
        
       <%-- //THIS IS WHAT ALLOWS THE XSL TRANSFORM 
       "http://localhost:8080/wsassignment/rest/bookApp/books/filter"--%>
        <%

            String xml ="http://localhost:8080/wsassignment/rest/bookApp/books/filter?lister="+userEmail; // location of the XML file

            String xsl = "booksDelete.xsl"; // location of the XSL file

        %>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

        <c:set var="xml" value="<%=xml%>"/>

        <c:set var="xsl" value="<%=xsl%>"/>

        <c:import url="${xml}" var="xmldocument"/>

        <c:import url="${xsl}" var="xslt"/>

        <x:transform xml="${xmldocument}" xslt="${xslt}"/>
        
        <% } else { %>
        
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
           
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
        <h1>My books</h1>
        <%
         // New location to be redirected
         String site = new String("index.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
        %>
        <p>You are not logged in. If not automatically redirected, press <a href="index.jsp">here</a> to go back to the main page.</p>
        <%  } %>
    </body>
</html>
