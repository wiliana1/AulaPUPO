<%-- 
    Document   : index
    Created on : 25 de out. de 2021, 14:01:31
    Author     : Wiliana Santos
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horario - Aula 11</title>
    </head>

    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>HORÁRIO : </h2>
        
        <h3>Hora atual: </h3>
        <div><%=horaAtual.getHorario()%></div>
        
        <h3>Horário do Intervalo:</h3>
        <div><%=horaIntervalo.getHorario()%></div>
    </body>
</html>