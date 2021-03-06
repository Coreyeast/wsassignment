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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 
        <% String filePath2 = application.getRealPath("WEB-INF/books.xml");%>

        <jsp:useBean id="bookApp" class="uts.assign.BookApplication" scope="application">
            <jsp:setProperty name="bookApp" property="filePath" value="<%=filePath2%>"/>
        </jsp:useBean>

        <%!
            String status = "avaliable";
                                %>

        <%
            Books books = bookApp.getBooks();
            String id = request.getParameter("id"); //Gives me the num
            int ids = Integer.parseInt(id);
            Book remove = books.getID(ids);
            if (remove != null) {
            books.removeBook(remove);
            }
            bookApp.updateXML(books, filePath2);
            bookApp.saveBooks();

        %>

        <%-- HEADER: Logged in or not --%>

        <%User user = (User) session.getAttribute("user");
            if (user != null) {%>
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are logged in as <%=user.getName()%> < <%=user.getEmail()%> > 
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="myBooks.jsp">My Books</a> | <a href="ListBooksNew.jsp">List A book</a> | <a href="logout.jsp">Logout</a></div>


        <% } else {%>
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are not logged in.
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
        
        <%}%>

        <h1> Your listing has been deleted! </h1>
        <p>Click <a href='index.jsp'> here</a> to return home. </p>
    </body>
</html>
