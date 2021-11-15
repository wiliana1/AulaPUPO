<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - To-do list</title>
    </head>
    <body>
        <h1>JDBC - Wiliana Santos</h1>
        <div><%= new java.util.Date() %></div>
        <h2>To-do list</h2>
     
       
        <h3>Tarefas</h3>
        <form>
            <input type="text" name="taskName"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        <table>
          
        </table>
    </body>
</html>