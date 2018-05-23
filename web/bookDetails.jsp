
<%@page import="uts.assign.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <% String filePath = application.getRealPath("WEB-INF/books.xml");%>
   
    <jsp:useBean id="bookApp" class="uts.assign.BookApplication" scope="application">
    <jsp:setProperty name="bookApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean> 
         
         
         <%Books books = bookApp.getBooks();%>
         
         <%String id;
         id = request.getParameter("id");
         %>
         
         <h1><%=id%></h1>
         
    </body>
</html>
