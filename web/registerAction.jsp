<%-- 
    Document   : registerAction
    Created on : 27/04/2018, 12:25:52 PM
    Author     : Corey's-PC
--%>

<%-- 
     We will need to add the DiaryApp stuff here to connect the users the the users.xml file 
     - corey
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import="uts.assign.*"%>
        <% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
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
            %>
            
            <%
                name = request.getParameter("name");
                email = request.getParameter("email");
                password = request.getParameter("password");
                tos = request.getParameter("tos");
            %>
    </head>
    <body>
        <% 
            if(tos!=null && !email.isEmpty() && !password.isEmpty() && !name.isEmpty()) { 
                int userCount = 0;
                Users users = diaryApp.getUsers();
                User user = new User(email,name,password);
                session.setAttribute("user", user);
                users.addUser(user);
                diaryApp.updateXML(users, filePath);
                diaryApp.saveUsers();
        %>    
        <h1>Account created!</h1>
        <br>
        <p>We have successfully created your account with the email < <%=email%> ></p>
        <p>Click <a href="index.jsp">here</a> to return to the main page</p>
        <% } else { %>
        <h1>Account not created </h1>
        <p>Opps! It looks like you forgot to fill out one of the fields</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% } %>
    </body>
</html>
