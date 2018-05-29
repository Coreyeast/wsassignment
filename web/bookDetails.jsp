
<%@page import="uts.assign.Book"%>
<%@page import="uts.assign.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        div {
    max-width: 800px;
    min-width: 100px;
    background-color: powderblue;
    margin: auto;
}
    </style>
</head>
<body>

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
        String lister;
            %>

    <%
        String id = request.getParameter("id"); //Gives me 1

        int ids = Integer.parseInt(id); //id's now = 1

        Book answer = books.getID(ids);

        title = answer.getTitle();
        author = answer.getAuthor();
        abstractt = answer.getAbsstract();
        pubInfo = answer.getPubInfo();
        lister = answer.getLister();
    %>

    <h1 align='center'><u>Book Details: <%=title%></u></h1>
    <h3 align='center'>
        <i> By: <%=author%> </i>
    </h3>
    
    <div>
        <p>
        <%=abstractt%> 
    </p>
    <p>
        Additional Information: 
        <%=pubInfo%>
    </p>
    
    <p>
        Listed by: <%=lister%>
    </p>
    
    
    
    <h2>
        <u>Reserve this book</u>
    </h2>
    
    <form action='reserved.jsp' method='post'>
        Please enter your name: <input type='text' name='name'> <br> <br>
        Please enter your email: <input type='text' name='email'> 
        <input type="hidden" name="title" value='<%=title%>'/>
        <input type="hidden" name="id" value='<%=id%>'/><br><br>
        <input type='hidden' name='status' value='unavailable'/>
        <input type='submit' value='Reserve this book'/>
    </form>
    
    </div>

</body>
</html>