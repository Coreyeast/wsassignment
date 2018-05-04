<%@page import="uts.assign.*"%>

<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="diaryApp" class="uts.assign.DiaryApplication" scope="application">
    <jsp:setProperty name="diaryApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginAction</title>
    </head>
    <body>
<%
                String email = request.getParameter("email");
                
                
                if(!email.matches("\\b[\\w.%-]+@[-.\\w]+\\.[A-Za-z]{2,4}\\b")){
                    %>
                 <p> Password incorrect. :) Click <a href="login.jsp">here</a> to try again.</p>
                <%} else { %>
                
                <%
                    String password = request.getParameter("password");
                    Users users = diaryApp.getUsers();
                    User user = users.login(email, password);                    
                    %><% 

                    if (user != null) {
                    session.setAttribute("user", user);
                    %> 
                    <hr>Login successful. Click <a href="index.jsp">here</a> to return to the main page.</p>
                    <% } else { %>
                    <p> Password incorrect. Click <a href="login.jsp">here</a> to try again.</p> 
        <%} 
            }%>
    </body>
</html>
