<%-- 
    Document   : Register
    Created on : 23/03/2018, 11:11:13 AM
    Author     : 12578720
--%>

<%@page import="uts.assign.User"%>
<%@page import="uts.assign.Users"%>
<%@page import="uts.assign.Books"%>
<%@page import="uts.assign.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%  String title = request.getParameter("title");
        String absstract = request.getParameter("abstract");
        String author = request.getParameter("author");
        String pubInfo = request.getParameter("pubInfo");
        String condition = request.getParameter("condition");
        String tos = request.getParameter("tos");
        String submitted = request.getParameter("submitted");
        
        User user = (User) session.getAttribute("user");
        String lister = user.getEmail();
        

    %>
 
    <% String filePath = application.getRealPath("WEB-INF/books.xml");%>
   
   <jsp:useBean id="bookApp" class="uts.assign.BookApplication" scope="application">
    <jsp:setProperty name="bookApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean> 

    <%Books books = bookApp.getBooks();%>
    
    <body>
        <% if (submitted != null && submitted.equals("yes")) { %>
        <% if (title.isEmpty() || author.isEmpty() || absstract.isEmpty() || pubInfo.isEmpty() ) {%>
        <p> Please provide all the fields </p>
        <p> Click <a href='Listbooks.jsp'>here</a> to go back. </P>
        <% } else{%>
        <%  if (tos != null) { %>
            <%session.getAttribute("book");%>
            
                <h1>Book successfully listed</h1>
                <p> Title: <%=title%> </p>
                <p> Click <a href='index.jsp'>here</a> to return to main page. </p>
                
                 <% /*int count; 
                    if (books.getBookName(title) != null) {
                    count = books.bookCount();
                    }
                    else {
                        count = 1;
                    }
                    */
                     String price = request.getParameter("price"); //Gives me 1

                    int price2 = Integer.parseInt(price); //id's now = 1
                %>
                <%-- <p> Current counter: <%=count%> </p>
                 <% session.setAttribute("count", count); %> --%>
                
                
                
                <%Book book = new Book(books.createID(), title, author, absstract, pubInfo, condition, lister, price2); %> 
                <% session.setAttribute("book", book); %>
                
                <%books.addBook(book);%>      
                <%bookApp.updateXML(books, filePath); %>
                <%bookApp.saveBooks(); %> 
                
                
            <%} else {%>
                <p> Please agree to TOS </p>
                <p> Click <a href='Listbooks.jsp'>here</a> to go back. </P>
                <%} %>
                
        <% } }else { %>
        <h1>List a book</h1>
        <form action="Listbooks.jsp" method="post">
            <table>
                <tr><td> Title: </td> <td> <input type="text" name="title"/></td></tr>
                <tr><td> Author: </td> <td> <input type="text" name="author"/></td></tr>
                <tr><td> Abstract: </td> <td> <input type="text" name="abstract"/></td></tr>
                <tr><td> Publication information (Year, Edition, ISBN etc.): </td> <td> <input type="text" name="pubInfo"/> </td></tr>
                <tr><td> Price: </td> <td> <input type="text" name="price"/> </td></tr>
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
