<%-- 
    Document   : about
    Created on : 22 de set. de 2021, 22:12:14
    Author     : Wiliana Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página 2 - SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página 2</h2>
        <%if(authUserName==null ){%>
            <p style="color: red">Você não tem permissão para ver este conteúdo</p>
        <%}else{%>
            <br/>Wiliana Santos
             <br/> RA: 1290481822048
            <br/>   https://github.com/wiliana1
            </p>
            
        <%}%>
    </body>
</html>