<%-- 
  
    Author     : Wiliana Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Integer> numbers = (ArrayList)session.getAttribute("auth-numbers");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Wiliana Santos - &#127808; BOA SORTE &#127808;</h2>
        <%if(session.getAttribute("auth-username")==null){%>
            <div>Você não tem permissão para ver essa página</div>
        <%}else if(numbers == null){%>
            <div>Não foram gerados números para você. :(</div>
        <%}else{%>
            <table border="1">
                <tr>
                    <th>&#127808; Número da mega &#127808;</th>
                </tr>
                <%for(int n: numbers){%>
                <tr>
                    <td><%= n %></td>
                </tr>
                <%}%>
            </table>
        <%}%>
    </body>
</html>
