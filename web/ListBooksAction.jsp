<%-- 
    Document   : ListBooksAction
    Created on : 29/05/2018, 7:22:16 PM
    Author     : muqadusazam
--%>

<%@page import="javax.transaction.SystemException"%>
<%@page import="uts.assign.User"%>
<%@page import="uts.assign.Users"%>
<%@page import="uts.assign.Books"%>
<%@page import="uts.assign.Book"%>

    <% String filePath = application.getRealPath("WEB-INF/books.xml");%>
   
   <jsp:useBean id="bookApp" class="uts.assign.BookApplication" scope="application">
    <jsp:setProperty name="bookApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        try{
        String title = request.getParameter("title");
        String absstract = request.getParameter("abstract");
        String author = request.getParameter("author");
        String pubInfo = request.getParameter("pubInfo");
        String condition = request.getParameter("condition");
        String tos = request.getParameter("tos");
        String submitted = request.getParameter("submitted");
        User user = (User) session.getAttribute("user");
        String lister = user.getEmail();

    %>
 


    <%Books books = bookApp.getBooks(); %>
    
    <body>
        
        <% if (submitted != null && submitted.equals("yes")) { %>

        <% if (title.isEmpty() || title == null){ %>
        <p> Please provide the title</p>
        <p> Click <a href='ListBooksNew.jsp'>here</a> to go back. </P>
        <% } else if (author.isEmpty() || author == null){%>
        <p> Please provide the author</p>
        <p> Click <a href='ListBooksNew.jsp'>here</a> to go back. </P>
        <% } else if (absstract.isEmpty() || absstract == null){%>
        <p> Please provide the abstract</p>
        <p> Click <a href='ListBooksNew.jsp'>here</a> to go back. </P>
        <% } else if (pubInfo.isEmpty() || pubInfo == null){ %>
        <p> Please provide the publication information</p>
        <p> Click <a href='ListBooksNew.jsp'>here</a> to go back. </P>
        <% }else{%>
        <%  if (tos != null) { %>
            <%session.getAttribute("book");
            String price = request.getParameter("price"); //Gives me 1

                    int price2 = Integer.parseInt(price); //id's now = 1
            %>
            
                <h1>Book successfully listed</h1>
                <p> Title: <%=title%> </p>
                <p> Click <a href='index.jsp'>here</a> to return to main page. </p>
                
                <%Book book = new Book(books.createID(), title, author, absstract, pubInfo, condition, lister, price2); %> 
                <% session.setAttribute("book", book); %>
                
                <%books.addBook(book);%>      
                <%bookApp.updateXML(books, filePath); %>
                <%bookApp.saveBooks(); %> 
                
                
                
            <%} else {%>
                <p> Please agree to TOS </p>
                <p> Click <a href='ListBooksNew.jsp'>here</a> to go back. </P>
                <%} %>
                
        <% } } } catch(NullPointerException ex){%>
            <p>Author could not be found</p>
            <% }  catch (Exception e){%>
        <p> You got an exception : (<%= e.getMessage() %> <% ;%>)</P>
        <% } %>
    </body>
</html>
