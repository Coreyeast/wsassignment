<%@page import="uts.assign.*"%>

<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="diaryApp" class="uts.assign.DiaryApplication" scope="application">
    <jsp:setProperty name="diaryApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginAction</title>
    </head>
    <body>
        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are not logged in
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");

    try {
        if (email.isEmpty()) { %>
        <p> Email not provided. please click <a href="login.jsp">here</a> to go back.</p>
        <% } else if (!email.matches("\\b[\\w.%-]+@[-.\\w]+\\.[A-Za-z]{2,4}\\b")) {
        %>
        <p> Email is not in right format. :) Click <a href="login.jsp">here</a> to try again.</p>
        <%} else if (password.isEmpty()) { %>
        <p> Password not provided. please click <a href="login.jsp">here</a> to go back.</p>
        <% } else {

            Users users = diaryApp.getUsers();
            User user = users.login(email, password);
        %><%
                if (user != null) {
                    session.setAttribute("user", user);
        %> 
        <hr>Login successful. Click <a href="index.jsp">here</a> to return to the main page.</p>
        <% } else { %>
    <p> Wrong password or email. please click <a href="login.jsp">here</a> to sign in with right ID.</p>
    <% }
                       }
                   } catch (NullPointerException ex) {%>
    <p> You must provide an email address and password in order to login.</p>
    <p>Please click <a href="login.jsp">here</a> to go back.</p>
    <% } catch (Exception e) {%>
    <p> You got an exception : (<%= e.getMessage()%> <% ;%>)</P>
    <p>Please click <a href="login.jsp">here</a> to go back.</p>
        <% }%>
    </body>
</html>
