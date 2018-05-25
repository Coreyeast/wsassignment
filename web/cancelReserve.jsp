<%-- 
    Document   : cancelReserve
    Created on : 25/05/2018, 1:13:42 PM
    Author     : Pat Plenge
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
        <h1>Hello World!</h1>
         <% String filePath2 = application.getRealPath("WEB-INF/books.xml");%>
   
   <jsp:useBean id="bookApp" class="uts.assign.BookApplication" scope="application">
    <jsp:setProperty name="bookApp" property="filePath" value="<%=filePath2%>"/>
    </jsp:useBean>
        
        <%!
            String status;
            
        %>
        
        <%  status = request.getParameter("status");
            if(status.matches("unavailable")) {
               session.setAttribute(status, "available");
                Books books = bookApp.getBooks();
                String id = request.getParameter("id"); //Gives me the num
                int ids = Integer.parseInt(id);
                books.updateStatus(ids, status);
                bookApp.updateXML(books, filePath2);
                bookApp.saveBooks();
                
        %>
        <h1> reservation has been canceled! </h1>
        <%=status%>
        <p><a href='index.jsp'> home</a> </p>
        
        <%}else{%>
        
        <h1> Status is AVALIABLE</h1>
        <% %>
    </body>
</html>
