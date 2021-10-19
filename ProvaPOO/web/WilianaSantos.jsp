<%-- 
  
    Author     : Wiliana Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <title>Wiliana Santos</title>
        <%if(session.getAttribute("auth-username")==null){%>
            <div>Você não tem permissão para ver essa página</div>
        <%}else{%>
            
            <p> <br/>Wiliana Santiago dos Santos
             <br/> RA: 1290481822048
             <p> Semestre em que ingressei na FatecPG: Julho/2018
             <h4><a href="https://github.com/wiliana1">https://github.com/wiliana1</a></h4>
             <table border="1">        
             <tr>
                <td>&#9889;DISCIPLINAS CURSADA&#9889; </td>
                
            </tr>
             <tr>
                 <td>Estágio Supervisionado em Análise e Desenvolvimento de Sistemas </td>
             </tr><!-- comment -->
               <tr>
                 <td>Inteligência Artificial </td>
             </tr>
                </tr><!-- comment -->
               <tr>
                 <td>Programação Orientada a Objetos </td>
             </tr>
                <tr>
                 <td>Linguagem de Programação IV </td>
             </tr>
             </tr>
                <tr>
                 <td>Trabalho de Graduação II</td>
                 </tr>
              </table>    
            <%}%>
                
                
               
            
    </body>
</html>