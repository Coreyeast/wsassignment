<%-- 
    Document   : registerAction
    Created on : 27/04/2018, 12:25:52 PM
    Author     : Corey's-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        
        <%@page import="uts.assign.*"%>
        <% String filePath = application.getRealPath("WEB-INF/reserve.xml"); %>
        <jsp:useBean id="reserveApp" class="uts.assign.ReserveApplication" scope="application">
            <jsp:setProperty name="reserveApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
        <% String filePath2 = application.getRealPath("WEB-INF/books.xml");%>
   
   <jsp:useBean id="bookApp" class="uts.assign.BookApplication" scope="application">
    <jsp:setProperty name="bookApp" property="filePath" value="<%=filePath2%>"/>
    </jsp:useBean>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserved</title>
        
          <%

            String xml ="WEB-INF/reserve.xml"; // location of the XML file

            String xsl = "booksDetail.xsl"; // location of the XSL file

        %>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

        <c:set var="xml" value="<%=xml%>"/>

        <c:set var="xsl" value="<%=xsl%>"/>

        <c:import url="${xml}" var="xmldocument"/>

        <c:import url="${xsl}" var="xslt"/>

        <x:transform xml="${xmldocument}" xslt="${xslt}"/>
        
       
       
        
       
        
    </body>
</html>
