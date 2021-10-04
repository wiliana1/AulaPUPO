<%-- 
  
    Author     : Wiliana Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Wiliana Santos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
      
       
        <h3><a href="index.jsp">Voltar</a></h3>
        
       <%@include file="WEB-INF/jspf/header.jspf" %>

       
      
     
      
     
        <%if(authUserName==null ){%>
            <p style="color: red">Você não tem permissão para ver este conteúdo</p>
        <%}else{%>
             <a href="Wilianadicamegasena.jsp">Dicas Mega-Sena</a> | 
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
                
                
        <%if(errorMessage==null){%>
       
        <%}else{%>
            <div style="color: red"><%= errorMessage %></div>
        <%}%>
        <hr/>
    
            
            
    </body>
</html>