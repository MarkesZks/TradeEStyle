<%-- 
    Document   : ActionCadRoupas.jsp
    Created on : 2 de out. de 2023, 16:43:46
    Author     : 
Felipe Matthew Moreira Nascimento 11221103739
Felipe Rocha Dias 11221104556
Gabriel Marques Messias 11221102170
Gustavo Neves De Paiva 11221103490
Mateus De Barros Gimenes 11221103419
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model_dao.RoupaDAO"%>
<%@page import="model.Roupa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trade&Style - Cadastro de Roupas</title>
        <link rel="icon" type="image/png" href="../../assets/images/icon.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.min.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <style>
            a {
                  text-decoration: none; /* Remove sublinhado */
                   color: inherit;
            }
        </style>
    </head>
    <body>
        
        <!-- ALERT CONFIGURATION -->
        <script>
            function mostrarAlertaSucesso(mensagem) {
                Swal.fire({
                    icon: 'success',
                    confirmButtonText: '<a href="../../home.jsp">Ok</a>',
                    title: 'Sucesso',
                    text: mensagem,
                });
            }
        </script> 
        <%
              //Preenchendo as variaveis com os parametros inseridos nos inputs
            String nome = request.getParameter("nomeRoupa");
            String condicao = request.getParameter("condicao");
            String tipoRoupa = request.getParameter("tipoRoupa");
            String tamanho = request.getParameter("tamanho");
            String cor = request.getParameter("cor");
            String valor = request.getParameter("valor");
            //instância 
            Roupa roupa = new Roupa();
            //Setando os parametros
            roupa.setRoupa(nome);
            roupa.setCondicao(condicao);
            roupa.setTipo(tipoRoupa);
            roupa.setTamanho(tamanho);
            roupa.setCor(cor);
            roupa.setValor(Float.parseFloat(valor));
            //instância DAO
            RoupaDAO roupaDAO = new RoupaDAO();

            if (roupaDAO.cadastrarRoupa(roupa) == true) {
              //Caso for executado com sucesso 
            %>
            <script>mostrarAlertaSucesso('Roupa cadastrada com sucesso!');</script>                
            <%
                } else {
            //Caso for executado com falha
                out.println("<br> <b>usuario não cadastrado! <b>");
            }

        %>

    </body>
</html>
