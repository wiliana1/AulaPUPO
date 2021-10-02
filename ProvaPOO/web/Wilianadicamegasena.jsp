<%-- 
  
    Author     : Wiliana Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    int n=5;
 
%>
<html>
    <head>
        <title>Wiliana Santos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
      
      
        <h3><a href="index.html">Voltar</a></h3>
        <a href="Wilianadicamegasena.jsp">Dica Mega-Sena</a> | 
       <%@include file="WEB-INF/jspf/header.jspf" %>
       int n=5;
        <%if(authUserName==null ){%>
            <p style="color: red">Você não tem permissão para ver este conteúdo</p>
        <%}else{%>
                           
                <%}%>
                
                
        <%if(errorMessage==null){%>
          <h2> &#9752; BOA SORTE &#9752; </h2>
        <table border="1">
            <tr>
                
                <th>Número</th>
            </tr>
            <%for(int i=1; i<=n; i++){%>
            <tr>
                
                <td><%= ((int)(60*Math.random())) %></td>
            </tr>
            <%}%>
        </table>
        <%}else{%>
            <div style="color: red"><%= errorMessage %></div>
        <%}%>
        <hr/>
     
            
            
    </body>
</html>