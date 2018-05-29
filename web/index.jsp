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
        
        <% if (user != null) {%>
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

            String xml ="http://localhost:8080/wsassignment/rest/bookApp/books/filter"; // location of the XML file

            String xsl = "books.xsl"; // location of the XSL file

        %>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

        <c:set var="xml" value="<%=xml%>"/>

        <c:set var="xsl" value="<%=xsl%>"/>

        <c:import url="${xml}" var="xmldocument"/>

        <c:import url="${xsl}" var="xslt"/>

        <x:transform xml="${xmldocument}" xslt="${xslt}"/>
        
        <% } else { %>
        
        
        
        <%-- //WHEN THE PERSON IS NOT A LISTER (NOT LOGGED IN)--%>
        
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are not logged in
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
        
        
        <%-- //THIS IS WHAT ALLOWS THE XSL TRANSFORM --%>
         <%
            
            String xml ="http://localhost:8080/wsassignment/rest/bookApp/books/filter"; // location of the XML file
            
            String xsl = "books.xsl"; // location of the XSL file
            
        %>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

        <c:set var="xml" value="<%=xml%>"/>

        <c:set var="xsl" value="<%=xsl%>"/>

        <c:import url="${xml}" var="xmldocument"/>

        <c:import url="${xsl}" var="xslt"/>

        <x:transform xml="${xmldocument}" xslt="${xslt}"/>
        <% }%>
        
    </body>
</html>
