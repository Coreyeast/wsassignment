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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
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
            try{
            if(tos!=null && !email.isEmpty() && !name.isEmpty() && !password.isEmpty()) { 
                int userCount = 0;
                Users users = diaryApp.getUsers();
                User user = new User(email,name,password);
                session.setAttribute("user", user);
                users.addUser(user);
                diaryApp.updateXML(users, filePath);
                diaryApp.saveUsers();
        %>    
        
        <% } if(email.isEmpty()){%>
        <p>Please provide the email!</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% }else if (!email.matches("\\b[\\w.%-]+@[-.\\w]+\\.[A-Za-z]{2,4}\\b")){ %>
        <p>Email is not in right order!</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% }else if (name.isEmpty()){%>
        <p>Please provide the name!</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% } else if (password.isEmpty()){%>
        <p>Please provide the password!</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <% } else if (tos == null){ %>
        <h1>Account not created </h1>
        <p>Please agree the TOS</p>
        <p>Click <a href="register.jsp">here</a> to try again</p>
        <%} else { %>
        <h1>Account created!</h1>
        <br>
        <p>We have successfully created your account with the email < <%=email%> ></p>
        <p>Click <a href="index.jsp">here</a> to return to the main page</p>
        <% }  } catch(java.lang.NullPointerException ex){ %>
        <p>Fields are not filled in.</p>
        <% } catch (Exception e){ %>
        <p>Exception is : (<%= e.getMessage() %> <% ; %>)</p>
        <% System.out.println(e.getMessage());} %>
    </body>
</html>
