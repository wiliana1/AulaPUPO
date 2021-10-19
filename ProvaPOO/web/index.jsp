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
            sessionList =  (ArrayList)application.getAttribute("sessionList");
            sessions = sessionList.size();}

//Processamento do contator de requisições da aplicação
    if(application.getAttribute("counter")==null){
       application.setAttribute("counter", 1);
    }
    int counter = (int) application.getAttribute("counter");
    application.setAttribute("counter", ++counter);
    
    //Processamento do formulário
    String context = request.getParameter("context");
    String name = request.getParameter("name");
    int sessionCounter = 0;
    if(context!=null){
        if(context.equals("request"))
            request.setAttribute("name", name);
        else if(context.equals("session")){
            session.setAttribute("name", name);
            sessionCounter = 1;
            session.setAttribute("counter", sessionCounter);
        }else if(context.equals("application"))
            application.setAttribute("name", name);
    }else{
        if(session.getAttribute("counter")!=null){
            sessionCounter = (int) session.getAttribute("counter");
            session.setAttribute("counter", ++sessionCounter);
        }
    }
    //Processamento das entradas da página
    String requestName = null;
    String sessionName = null;
    String applicationName = null;
    String error = null;
    try{
        if(request.getAttribute("name")!=null)
            requestName = (String) request.getAttribute("name");
    }catch(Exception ex){error = ex.getMessage();}
    try{
        if(session.getAttribute("name")!=null)
            sessionName = (String) session.getAttribute("name");
    }catch(Exception ex){error = ex.getMessage();}
    try{
        if(application.getAttribute("name")!=null)
            applicationName = (String) application.getAttribute("name");
    }catch(Exception ex){error = ex.getMessage();}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        
        <h2>Índice</h2>
        <p>Bem vindo a prova de POO - P1</p>
        <hr/>
       
        <h3>Sessões: <u><%= sessions %></u></h3>
        <%if(session.getAttribute("auth-username")!=null){%>
        
        
        <%}%>
   
       
    </body>
</html>