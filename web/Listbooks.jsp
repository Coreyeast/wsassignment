<%-- 
    Document   : Register
    Created on : 23/03/2018, 11:11:13 AM
    Author     : 12578720
--%>

<%@page import="uts.assign.Books"%>
<%@page import="uts.assign.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%! String title;
        String author;
        String absstract;
        String pubInfo;
        String condition;
        String submitted;
        String tos;
    %>
    <%  title = request.getParameter("title");
        absstract = request.getParameter("abstract");
        author = request.getParameter("author");
        pubInfo = request.getParameter("pubInfo");
        condition = request.getParameter("condition");
        tos = request.getParameter("tos");
        submitted = request.getParameter("submitted");

    %>
 
    <% String filePath = application.getRealPath("WEB-INF/books.xml");%>
   
   <jsp:useBean id="bookApp" class="uts.assign.BookApplication" scope="application">
    <jsp:setProperty name="bookApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean> 
   
    <%Books books = bookApp.getBooks();%>
        
    <body>
        <%if (submitted != null && submitted.equals("yes")) {%>
            <% if (tos != null) { %>
            <%session.getAttribute("book");%>
            
                <h1>Book successfully listed</h1>
                <p> Title: <%=title%> </p>
                <p> Click <a href='index.jsp'>here</a> to return to main page. </p>
                
                <%Book book = new Book(title,author, absstract, pubInfo, condition); %> 
                <% session.setAttribute("book", book); %>
         
                <%books.addBook(book);%>      
                <%bookApp.updateXML(books, filePath); %>
                <%bookApp.saveBooks(); %> 
                
                
            <%} else {%>
                <p> Sorry you must agree to the Terms of Service. </p>
                <p> Click <a href='Listbooks.jsp'>here</a> to go back. </P>
            <%}%>
        <%} else {%>
        <h1>List a book</h1>
        <form action="Listbooks.jsp" method="post">
            <table>
                <tr><td> Title: </td> <td> <input type="text" name="title"/></td></tr>
                <tr><td> Author: </td> <td> <input type="text" name="author"/></td></tr>
                <tr><td> Abstract: </td> <td> <input type="text" name="abstract"/></td></tr>
                <tr><td> Publication information (ISBN etc.): </td> <td> <input type="text" name="pubInfo"/> </td></tr>  
                <tr><td> Condition: </td> <td> 
                        <select name="condition" >
                            <option value="poor" >Poor</option>
                            <option value="fair">Fair</option>
                            <option value="good">Good</option>
                            <option value="new">New</option>
                        </select>

                <tr><td>Agree to TOS</td> <td> <input type="checkbox" name="tos"/></td></tr>

                <tr><td></td> <td> <input type="submit" value="Register"/></td></tr>
                <input type="hidden" name="submitted" value="yes">
            </table>
        </form>
        <%}%>

    </body>
</html>
