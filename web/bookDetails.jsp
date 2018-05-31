
<%@page import="uts.assign.User"%>
<%@page import="uts.assign.Book"%>
<%@page import="uts.assign.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">  
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
    
    <%
        try {
            User user = (User) session.getAttribute("user");
    %>

    <%-- //checks if user is logged in --%>

    <% if (user != null) {%>
    <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
        You are logged in as <%=user.getName()%> < <%=user.getEmail()%> > 
    </div>
    <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="myBooks.jsp">My Books</a> | <a href="ListBooksNew.jsp">List A book</a> | <a href="logout.jsp">Logout</a></div>

    <% }else{ %>
    <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
        You are not logged in
    </div>
    <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
    <% } %>
</head>
<body>

    <% String filePath = application.getRealPath("WEB-INF/books.xml"); %>

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
        <%-- Fields to reserve a book! --%>
        <form action='reserved.jsp' method='post'>
            Please enter your name: <input type='text' name='name'> <br> <br>
            Please enter your email: <input type='text' name='email'> 
            <input type="hidden" name="title" value='<%=title%>'/>
            <input type="hidden" name="id" value='<%=id%>'/><br><br>
            <input type='hidden' name='status' value='unavailable'/>
            <input type='submit' value='Reserve this book'/>
        </form>

    </div>
        <% } catch(NullPointerException ex){ %>
        <p> Please provide all the fields </p>
        <p> Click <a href='bookDetails.jsp'>here</a> to go back. </P>
        <% } catch(NumberFormatException ex){ %>
        <p> You need to be logged in. </p>
        <p> Click <a href='login.jsp'>here</a> to go Log in. </P>
        <% } catch(Exception ex){ %>
        <p> You got an exception : <%= ex.getMessage() %> </p>
        <p> Click <a href='login.jsp'>here</a> to go Log in. </P>
        <% }  %>
</body>
</html>