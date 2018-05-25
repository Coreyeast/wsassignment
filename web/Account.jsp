<%-- 
    Document   : welcome
    Created on : 23/03/2018, 12:04:54 PM
    Author     : 12578720
--%>

<%@page import="uts.assign.Users"%>
<%@page import="uts.assign.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%! String name;
        String email;
        String password;
        String tos;
    %>
    <%  name = request.getParameter("name");
        email = request.getParameter("email");
        password = request.getParameter("password");
        tos = request.getParameter("tos");
    %>
    
   <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
   
   <jsp:useBean id="diaryApp" class="uts.assign.DiaryApplication" scope="application">
    <jsp:setProperty name="diaryApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean> 
   
    <%Users users = diaryApp.getUsers();%>
    
        <%if(tos != null) {%>
        <body>
            <%session.getAttribute("user");%>
            <h1> Welcome <%=name%> </h1>
            <p> Your Email is <%=email%>. </p>
            <p> Your password is <%=password%>. </p>
            
            
         <%User user = new User(email,name,password); %> 
         <% session.setAttribute("user",user); %>
         
            <%users.addUser(user);%>
            <%diaryApp.updateXML(users, filePath); %>
            <%diaryApp.saveUsers(); %>
            <p> Click <a href='index.jsp'>here</a> to proceed to the main page. </P>
            
        <%}else{%>
        <p> Sorry you must agree to the Terms of Service. </p>
        <p> Click <a href='register.jsp'>here</a> to go back. </P>
        
        <%}%>
    </body>
</html>
