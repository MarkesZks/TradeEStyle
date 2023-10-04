<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->

<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>



<html lang="pt-br">
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/style/custom.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-25..200"/>

        
        <style>
            table{
                border-collapse: collapse;
                width: 100%;
            }
            th, td{
                padding: 4px;
                text-align: left;
                border: 1px solid #515254;
            }
            tr:hover {background-color: #D6EEEE;}            
            
            .material-symbols-outlined {
                font-variation-settings:
                'FILL' 0,
                'wght' 400,
                'GRAD' 0,
                'opsz' 24
            }
            body { color: black;}
            h1 { color: black;}
            h2 { color: darkgray;}
        </style>
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
             <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
            <li class="nav-item"><a href="./pages/CadastrarRoupa/CadastroRoupas.jsp" class="nav-link">Roupas</a></li>
            <li class="nav-item"><a href="index.html" class="nav-link">Login</a></li>
      </ul>     

    </div>
  </div>
</header>

<main>
 <%      
        FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
        
        List<Funcionario> minha_lista = new ArrayList<>();
        minha_lista = funcionarioDAO.consultarGeral();
                        
        //if (funcionarioDAO.consultarGeral() != null){                   
           
        %>
        <table style="width:100%"; border="2">
            <tr bgcolor="F3F3F3" >
                <th>Alterar?</th>
                <th>Apagar?</th>
                <th>Matrícula</th>
                <th>Nome</th>
                <th>Cargo</th>
                <th>CEP</th>
                <th>Complemento</th>
            </tr>
        <%                     
           int n_reg = 0;
           for(int i=0; i<=minha_lista.size()-1;i++){  
        %>
            <tr>
                <td> <a href="../alterar/funcionario_cons_id_alt.jsp?matric=<%= minha_lista.get(i).getMatric() %>"> <span class="material-symbols-outlined">update</span> </a></td>     
                <td> <a href="../excluir/func_exc_id.jsp?matric=<%= minha_lista.get(i).getMatric() %>"> <span class="material-symbols-outlined">delete</span> </a></td>   
                <td> <a href="funcionario_cons_id.jsp?matric=<%= minha_lista.get(i).getMatric() %>"> <%= minha_lista.get(i).getMatric() %> </a></td>              
                <td> <%= minha_lista.get(i).getNome() %></td>
                <td> <%= minha_lista.get(i).getCargo() %></td>
                <td> <%= minha_lista.get(i).getEnderecoCep() %></td>
                <td> <%= minha_lista.get(i).getEnderecoComp() %></td>             
        <% 
            n_reg++;
            }        
        //}else{
        //    out.println("<br> <b>Funcionario não encontrado! <b>");
        //}    
        %>
        </table>


</main>

<footer class="text-body-secondary py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Retornar ao início</a>
    </p>
    <p class="mb-1">Projeto criado para fins acadêmicos criado pelos alunos: <br> Felipe Matthew - Felipe Rocha - Gabriel Marques - Gustavo Neves - Mateus Gimenes</p>
    <p class="mb-0">Projeto url: <a target="_blank" href="https://github.com/MarkesZks/TradeEStyle">https://github.com/MarkesZks/TradeEStyle</a></p>
  </div>
</footer>
 
    </body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</html>
