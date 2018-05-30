<%-- 
    Document   : registerAction
    Created on : 27/04/2018, 12:25:52 PM
    Author     : Corey's-PC
--%>

<%@page import="java.util.ArrayList"%>
<%-- 
     We will need to add the DiaryApp stuff here to connect the users the the users.xml file 
     - corey
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <%@page import="uts.assign.*"%>
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="diaryApp" class="uts.assign.DiaryApplication" scope="application">
            <jsp:setProperty name="diaryApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <%@page import="uts.assign.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>loginAction</title>
        <%!
            String name;
            String email;
            String password;
            String gender;
            String tos;
            String DOB;
                                                        %>

        <%
            name = request.getParameter("name");
            email = request.getParameter("email");
            password = request.getParameter("password");
            tos = request.getParameter("tos");
            DOB = request.getParameter("DOB");
        %>
    </head>
    <body>
        <%-- //WHEN THE PERSON IS NOT A LISTER (NOT LOGGED IN)--%>

        <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
            You are not logged in
        </div>
        <div style="text-align: right;"><a href="index.jsp">Home</a> | <a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
        <h1>Book Site</h1>
        <%
            User user = new User(email, name, password, DOB);
            Users users = diaryApp.getUsers();

        %>

        <% if (email.isEmpty()) {%>
        <p>Please provide the email!</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% } else if (!email.matches("\\b[\\w.%-]+@[-.\\w]+\\.[A-Za-z]{2,4}\\b")) { %>
        <p>Email is not in right order!</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% } else if (name.isEmpty()) {%>
        <p>Please provide the name!</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% } else if (password.isEmpty()) {%>
        <p>Please provide the password!</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% } else if (tos == null) { %>
        <h1>Account not created </h1>
        <p>Please agree the TOS</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <%
        } else {%>

        <% try {
                if (tos != null && !email.isEmpty() && !name.isEmpty() && !password.isEmpty() && !DOB.isEmpty()) {
                    int userCount = 0;
                    if (users.checkEmail(email)) {
                        session.setAttribute("user", user);
                        users.addUser(user);
                        diaryApp.updateXML(users, filePath);
                        diaryApp.saveUsers();
        %>
        <h1>Account created!</h1>
        <br>
        <p>We have successfully created your account with the email < <%=email%> ></p>
        <p>Click <a href="index.jsp">here</a> to return to the main page</p>
        <%} else {%>
        <p> User already exists. </p>
        <p>Click <a href="register.jsp">here</a> to go back.</p>
                   <% }%> 

        <%} else {%>    
        <p>Fields are not filled in.</p>
        <p>Click <a href="register.jsp">here</a> to go back.</p>
        <% } %>
        <% } catch (Exception e) {%>
        <p>Exception is : PATTY(<%= e.getMessage()%> <% ; %>)</p>
        <p>Click <a href="register.jsp">here</a> to go back.</p>
        <% System.out.println(e.getMessage());
            }%>

        <%}%>

    </body>
</html>
