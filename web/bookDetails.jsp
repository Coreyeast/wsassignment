
<%@page import="uts.assign.Book"%>
<%@page import="uts.assign.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    
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
         
         <%!
             String title;
             String author;
             String abstractt;
             String pubInfo;
             String condition;
             String status;
             %>

       <%
         String id = request.getParameter("id"); //Gives me 1
        
         int ids = Integer.parseInt(id); //id's now = 1
         
        Book answer = books.getID(ids);
        
        title = answer.getTitle();
        author = answer.getAuthor();
        abstractt = answer.getAbsstract();
        pubInfo = answer.getPubInfo();
           %>
           
<%=title%>
</body>
</html>