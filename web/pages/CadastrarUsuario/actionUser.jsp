<%-- 
    Document   : actionUser
    Created on : 2 de out. de 2023, 16:43:56
    Author     : GABRIEL
--%>

<%@page import="model.Usuario"%>
<%@page import="model_dao.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
        
        
        
    </head>
    <body>
        <header data-bs-theme="dark">
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container">
      <a href="#" class="navbar-brand d-flex align-items-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
        <strong>Trade&Style</strong>
      </a>
         <ul class="nav nav-pills">
             <li class="nav-item"><a href="../../home.html" class="nav-link active" aria-current="page">Home</a></li>
      </ul>     

    </div>
  </div>
</header>
        
        <main>
            <h1>Action user</h1>
        </main>
        
    
        
          <%

        String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        String pais = request.getParameter("pais");
        String estado = request.getParameter("estado");
        
        
        Usuario usuario = new Usuario();

        usuario.setNome(nome);
        usuario.setSenha(senha);
        usuario.setUsername(username);
        usuario.setEmail(email);
        usuario.setTelefone(telefone);
        usuario.setEndereco(endereco);
        usuario.setPais(pais);
        usuario.setEstado(estado);
     
       
        UsuarioDAO usuarioDAO = new usuarioDAO();
        
        if (usuarioDAO.cadastrar(usuario) == true){
            out.println("<br> usuario cadastrado com sucesso!");
            return prompt
        }else{
            out.println("<br> <b>usuario não cadastrado! <b>");
        }       
        
 %>

    </body>
</html>
