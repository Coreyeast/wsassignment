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
              <% String filePath = application.getRealPath("WEB-INF/reserve.xml");%>
   
   <jsp:useBean id="reserveApp" class="uts.assign.ReserveApplication" scope="application">
    <jsp:setProperty name="reserveApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean>
        
        <%!
            String status = "avaliable";   
        %>
        
        <%     
                Books books = bookApp.getBooks();
                String id = request.getParameter("id"); //Gives me the num
                int ids = Integer.parseInt(id);
                books.updateStatus(ids, status);
                bookApp.updateXML(books, filePath2);
                bookApp.saveBooks();
                
              /* //THIS PART NEEDS WORK
                Reservations reservations = reserveApp.getReservations();
                Reservation reservation = new Reservation(email,name,title,ids);
                session.setAttribute("reservation", reservation);
                reservations.removeReservation(reservation);
                reserveApp.updateXML(reservations, filePath);
                reserveApp.saveReservations();
                */
        %>
        
        <h1> reservation has been canceled! </h1>
        <%=status%>
        <p><a href='index.jsp'> home</a> </p>
    </body>
</html>
