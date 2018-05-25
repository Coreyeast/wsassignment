<%-- 
    Document   : registerAction
    Created on : 27/04/2018, 12:25:52 PM
    Author     : Corey's-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        
        <%!
            String name;
            String email;
            String title;
            String status;
            %>
            
            <%
                name = request.getParameter("name");
                email = request.getParameter("email");
                title = request.getParameter("title");
                status = request.getParameter("status");
                //PARSE ID
                
              String id = request.getParameter("id"); //Gives me the num
                int ids = Integer.parseInt(id);
                
                
            %>
    </head>
    <body> 
        
        
        <% 
            if(!email.isEmpty() ) { 
                Reservations reservations = reserveApp.getReservations();
                Reservation reservation = new Reservation(email,name,title,ids);
                session.setAttribute("reservation", reservation);
                reservations.addReservation(reservation);
                reserveApp.updateXML(reservations, filePath);
                reserveApp.saveReservations();
                
                Books books = bookApp.getBooks();
                
                books.updateStatus(ids, status);
                bookApp.updateXML(books, filePath2);
                bookApp.saveBooks();
                
        %>    
        <h1>Book reserved!</h1>
        <br>
        <p>We have successfully reserved your book and contacted the lister! < <%=email%> ></p>
        <p>Click <a href="index.jsp">here</a> to return to the main page</p>
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
        
        <% } else { %>
        <h1>Book not reserved </h1>
        <p>Opps! It looks like you forgot to fill out one of the fields.</p>
        <p>Click <a href="bookDetails.jsp?id=<%=id%>">here</a> to try again</p>
        <% } %>
       
        
       
        
    </body>
</html>
