<%-- 
    Document   : page1
    Created on : 13 de set. de 2021, 20:04:17
    Author     : Wiliana Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página 1 - SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página 1</h2>
        <%if(authUserName==null ){%>
            <p style="color: red">Você não tem permissão para ver este conteúdo</p>
        <%}else{%>
            <p>Porque nós o usamos?

                <%}%>
                
                
    </body>
</html>