<%-- 
    Document   : index
    Author     : Wiliana Santos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int sessions = 0;
    ArrayList<String> sessionList = null;
    if(application.getAttribute("sessionList")!=null){
        sessionList = (ArrayList)application.getAttribute("sessionList");
        sessions = sessionList.size();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <h2>Índice</h2>
        <p>Bem vindo a prova de POO - P1</p>
        <h3>Sessões: <u><%= sessions %></u></h3>
        <%if(session.getAttribute("auth-username")!=null && sessionList!=null){%>
        <ul>
            <%for(String name: sessionList){%>
            <li><%= name %></li>
            <%}%>
        </ul>
        <%}%>
    </body>
</html>