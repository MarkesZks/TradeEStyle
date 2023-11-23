<%-- 
    Document   : ActionApagarRoupa.jsp
    Created on : 30 de ago. de 2023, 19:55:43
    Author     : 
Felipe Matthew Moreira Nascimento 11221103739
Felipe Rocha Dias 11221104556
Gabriel Marques Messias 11221102170
Gustavo Neves De Paiva 11221103490
Mateus De Barros Gimenes 11221103419
--%>
<!-- Importar Classes Model roupa -->
<%@page import="model_dao.RoupaDAO"%>
<%@page import="model.Roupa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trade&Style - Apagar Roupa</title>
        <link rel="icon" type="image/png" href="../../assets/images/icon.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/style/custom.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-25..200"/>
        <!-- Adicione no cabeçalho do seu arquivo JSP -->
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
        
         <!-- Configuração de Alerta caso for apagado com sucesso-->
        <script>
            function mostrarAlertaSucesso(mensagem) {
                Swal.fire({
                    icon: 'success',
                    confirmButtonText: '<a href="../../home.jsp">Ok</a>',
                    title: 'Sucesso',
                    text: mensagem
                });
            }
            //   Configuração de Alerta caso for apagado com falha
            function mostrarAlertaErro(mensagem) {
                Swal.fire({
                    icon: 'error',
                    title: 'Erro',
                    text: mensagem
                });
            }
        </script>
        <%
            
           //Apagar apontando no ID especificado 
           
            String id = request.getParameter("idRoupa");

            Roupa roupa = new Roupa();
            
            roupa.setId(Integer.parseInt(id));

            RoupaDAO roupaDAO = new RoupaDAO();
            
            if (roupaDAO.excluirRoupa(roupa) == true) {
              //Executando Script de Alerta e redirencionado para Home
               out.println("<script>mostrarAlertaSucesso('Roupa apagada com sucesso!');</script>");
            } else {
            //Executando Script de Alerta e redirencionado para pagina de erro
                out.println("<script>mostrarAlertaErro('Ocorreu um erro ao apagar o usuário.');</script>");
            }

        %>

    </body>
</html>
