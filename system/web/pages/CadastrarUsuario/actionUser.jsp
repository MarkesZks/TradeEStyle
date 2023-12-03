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

<!-- Importar Classes Model Usuario -->
<%@page import="model.Usuario"%>
<%@page import="model_dao.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    confirmButtonText: '<a href="../../index.html">Ok</a>',
                    title: 'Sucesso',
                    text: mensagem,
                });
            }
        </script> 
         <!-- Cabeçalho de navegação entre telas -->
        <header data-bs-theme="dark">
            <div class="navbar navbar-dark bg-dark shadow-sm">
                <div class="container">
                    <a href="#" class="navbar-brand d-flex align-items-center">
                        <img src="../../assets/images/icon-page.png" width="25" height="25" style="margin-right: 3px" alt="cabide" />
                        <strong>Trade&Style</strong>
                    </a>
                    <ul class="nav nav-pills">
                        <li class="nav-item"><a href="../../home.html" class="nav-link active" aria-current="page">Home</a></li>
                    </ul>     

                </div>
            </div>
        </header>

        <main>
        </main>



        <%
            //Preenchendo as variaveis com os parametros inseridos nos inputs
            String nome = request.getParameter("nome");
            String senha = request.getParameter("senha");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String telefone = request.getParameter("telefone");
            String endereco = request.getParameter("endereco");
            String pais = request.getParameter("pais");
            String estado = request.getParameter("estado");
           //instância 
            Usuario usuario = new Usuario();
            //Setando os parametros
            usuario.setNome(nome);
            usuario.setSenha(senha);
            usuario.setUsername(username);
            usuario.setEmail(email);
            usuario.setTelefone(telefone);
            usuario.setEndereco(endereco);
            usuario.setPais(pais);
            usuario.setEstado(estado);

            UsuarioDAO usuarioDAO = new UsuarioDAO();

            if (usuarioDAO.cadastrar(usuario) == true) {
            //Caso for executado com sucesso 
        %>
        <script>mostrarAlertaSucesso('Usuário cadastrada com sucesso!');</script>
        <%
            } else {
            //Caso for executado com falha
                out.println("<br> <b>usuario não cadastrado! <b>");
            }

        %>

    </body>
</html>
