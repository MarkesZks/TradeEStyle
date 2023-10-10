<%-- 
    Document   : actionUser
    Created on : 2 de out. de 2023, 16:43:56
    Author     : 
Felipe Matthew Moreira Nascimento 11221103739
Felipe Rocha Dias 11221104556
Gabriel Marques Messias 11221102170
Gustavo Neves De Paiva 11221103490
Mateus De Barros Gimenes 11221103419
--%>
<!-- Importar Bibliotecas Java e Controles do usuario -->
<%@page import="java.text.*" import="java.lang.*" %>
<%@page import="model.Usuario"%>
<%@page import="controller.ControllerUser" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.min.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
 
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trade&Style</title>
        <link rel="icon" type="image/png" href="./assets/images/icon.png">
        <link rel="stylesheet" href="./assets/style/custom.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoI6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
        
        <style>
            a {
                  text-decoration: none; /* Remove sublinhado */
                   color: inherit;
            }
        </style>
    </head>
    <body>
        
         <!-- Configuração de Alerta caso o usuario for logado com sucesso-->
        <script>
            function mostrarAlertaSucesso(mensagem) {
                Swal.fire({
                    icon: 'success',
                    confirmButtonText: '<a href="./home.jsp">Ok</a>',
                    title: 'Sucesso',
                    text: mensagem,
                });
            }
        </script> 
        
                <!-- Try catch instanciando a classe controller-->
        <%
            try {
                String email = request.getParameter("email");
                String senha = request.getParameter("senha");
        
                ControllerUser controllerUser = new ControllerUser();
                if (controllerUser.logar(email,senha)) {
        %>
        <!-- Executando Script de Alerta e redirencionado para Home-->
        <script>mostrarAlertaSucesso('Login realizado com sucesso!');</script>
        <%
                } else {
        %>
        <!-- Caso de Erro direcionar para pagina de erro-->
        <script> window.location.href = './pages/Error/404Error.html';</script>
        <%
                }
            } catch(Error ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
