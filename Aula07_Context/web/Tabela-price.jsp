<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <!-- CABEÇALHO E MENU -->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        
               
        <!-- INICIO CONTAINER -->
        <div class="container" align="center">
            <div class="row">
                <!-- CARD DO FORM -->
                <div class="col-sm-2">
                    <div class="card" align="center" style="width: 18rem;">
                        <div class="card-body">
                            <h4 class="card-title titulo">Faça uma simulação</h4>
                            <form method="post" class="fonte">
                                Empréstimo inicial (em R$): <input type="text" name="C"><br><br>
                                Tempo (em meses): <input type="text" name="n"><br><br>
                                Taxa de juros (% em meses): <input type="text" name="i"><br><br>
                                <input type="submit" value="Calcular">
                            </form>
                        </div>
                    </div>
                </div>
                
                <!-- CARD DE RESPOSTA -->
                <div class="col-sm-10">
                    <div class="card" align="center" style="width: 40rem;">
                        <div class="card-body">
                            
                            <!-- TABELA PRICE -->
                        <%  try {
                                double C = Double.parseDouble(request.getParameter("C"));
                                double i = Double.parseDouble(request.getParameter("i")) / 100;
                                int n = Integer.parseInt(request.getParameter("n"));
                                double PMT, juros, saldo = C;
                                
                                if (C > 0.0 && n > 0 && i > 0.0){  %>
                                    <table border="1" class="fonte"; font-size: 1.5em;">
                                        <tr><th>Mês</th><th>Parcela</th><th>Amortização</th><th>Juros</th><th>Saldo Devedor</th></tr>
                                <%  PMT = C / ((1 - Math.pow(1 + i, -n)) / i);
                                    for (int ct = 1; ct <= n; ct++){
                                        juros = saldo * i;
                                        saldo -= (PMT - juros); %>
                                        <tr><th><%= ct %></th><td><%= String.format("%.2f", PMT) %></td><td><%= String.format("%.2f", PMT - juros) %></td><td><%= String.format("%.2f", juros) %></td><td><%= String.format("%.2f", saldo) %></td></tr>
                                <%  }  %>
                                    </table>
                            <%  } else {  %>
                                    <h3 class="h3fonte">Favor colocar valores maiores que zero.</h3>
                            <%  }
                            } catch (Exception ex){  %>
                                <h3 class="h3fonte">Favor colocar valores válidos.</h3>
                        <%  }  %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <!-- FIM CONTAINER -->
        
        <!-- RODAPÉ -->
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>