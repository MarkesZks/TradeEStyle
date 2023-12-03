<!DOCTYPE html>
<%-- 
    Document   : home.jsp
    Created on : 2 de out. de 2023, 16:43:56
    Author     : 
Felipe Matthew Moreira Nascimento 11221103739
Felipe Rocha Dias 11221104556
Gabriel Marques Messias 11221102170
Gustavo Neves De Paiva 11221103490
Mateus De Barros Gimenes 11221103419
--%>

 <!-- Importar Bibliotecas Java e Classes ROUPAS -->
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model_dao.RoupaDAO"%>
<%@page import="model.Roupa"%>


 <!-- Tela Inicial - HOME -->
<html lang="pt-br">
    <head>
        <title>Trade&Style - Página Inicial</title>
        <link rel="icon" type="image/png" href="./assets/images/icon.png">
        <meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/style/custom.css" />
        <link rel="stylesheet" href="./assets/style/styleindex.css" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-25..200"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-5SJYT5s68Pfo99fWccUpMSLOHlCZSTdrWyx82JueLqB+YRBEC8pZgnVvSdvtWWnb/h6rJ4CjB0hL5K6bfiwuTQ==" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
        <script src="../web/assets/js/scroll-btn.js"></script>
        
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
            tr:hover {
                background-color: #D6EEEE;
            }

            .material-symbols-outlined {
                font-variation-settings:
                    'FILL' 0,
                    'wght' 400,
                    'GRAD' 0,
                    'opsz' 24
            }
            body {
                color: black;
            }
            h1 {
                color: black;
            }
            h2 {
                color: darkgray;
            }
            
            #btnScrollToTop {
                /*display: none;*/
                position: fixed;
                bottom: 20px;
                right: 20px;
                font-size: 16px;
                padding: 10px;
                background-color: #007bff;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            #btnScrollToTop:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>    
        <style>
            .container {
                text-align: center;
            }
            
        </style>
         <!-- Cabeçalho de navegação entre telas -->
        <header data-bs-theme="dark">
            <div class="navbar navbar-dark bg-dark shadow-sm">
                <div class="container justify-content-md-center ">
                        <a href="home.jsp" class="navbar-brand d-flex align-items-center text-center centro">
                            <img src="./assets/images/icon-page.png" width="60" height="60" style="margin-right: 3px" alt="cabide" />
                            <strong class="h1">Trade&Style</strong>
                        </a>
                    <ul class="nav nav-pills">
                        <li class="nav-item"><a href="./home.jsp" class="btn btn-success m-1" aria-current="page">Home</a></li>
                        <li class="nav-item"><a href="./pages/CadastrarRoupa/CadastroRoupas.jsp" class="btn btn-outline-success m-1">Cadastrar</a></li>               
                        <li class="nav-item"><a href="./pages/AlterarRoupa/AlterarRoupaBusca.jsp" class="btn btn-outline-success m-1">Alterar</a></li>
                        <li class="nav-item"><a href="./pages/ApagarRoupa/ApagarRoupa.jsp" class="btn btn-outline-success m-1">Apagar</a></li>
                        
                    </ul>     
                </div>

            </div>
        </header>

        <main>
             <!-- Titulo -->
            <section 
                class="py-5 text-center container"
                style="
                background-image: url('assets/images/RoupasHome.png');
                min-width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center ; "
                >
                <div class="row py-lg-5 bg-success" style="opacity: 80%">
                    <div class="col-lg-6 col-md-8 mx-auto">
                        <h1 class="fw-light" style="font-weight: 900;color:white; opacity: 100%;"> <strong>A melhor loja de Roupas usadas </strong> </h1>
                        <p class="lead " style="color:white" > <i>Loja de roupas e produtos usados, promovendo a sustentabilidade e o consumo consciente</i></p>
                    </div>
                </div>
            </section>
            
             <!-- Consulta Geral integrada na Home-->
            
            <%
                RoupaDAO roupaDAO = new RoupaDAO();

                List<Roupa> myList = new ArrayList<>();
                myList = roupaDAO.consultarGeral();

                if (roupaDAO.consultarGeral() != null){                   

            %>    
        <!-- Criação de um Card(Container) a cada consulta -->
            <div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" >
                <%           int n_reg = 0;
                    for (int i = 0; i <= myList.size() - 1; i++) {
                    
                %>
              

                    
 
               
                <div class="col" >
          <div class="card shadow-sm" style="border-radius: 10px; border: 0.1px solid rgba(0, 0, 0, 0.3);">
            
           
            <%           
               // Pegar tipo de roupa e trocar imagem da section
               // Camiseta e Camisa
               if("camiseta".equals(myList.get(i).getTipo()) || "camisa".equals(myList.get(i).getTipo())) {
            %>
                <img class="bd-placeholder-img card-img-top" src="./assets/images/imageteste.png" style="padding: 10px; width: 100%;height:75%; align-content: center">
            <%
                // Calça
                } else if("calca".equals(myList.get(i).getTipo())) {
            %>
                <img class="bd-placeholder-img card-img-top" src="./assets/images/calçaImagem.png" style="padding: 10px; width: 100%;height:75%; align-content: center">  
            <%
                //Shorts
                } else if("shorts".equals(myList.get(i).getTipo())) {
            %>
            <img class="bd-placeholder-img card-img-top" src="./assets/images/shorts.png" style="padding: 50px; width: 100%;height:75%; align-content: center">
            <%
                // Sapato e Tenis
                }          else if("sapato".equals(myList.get(i).getTipo()) || "tenis".equals(myList.get(i).getTipo())) {
            %> 
            <img class="bd-placeholder-img card-img-top" src="./assets/images/sapato.png" style="padding: 50px; width: 100%;height:75%; align-content: center">
            <%
                } else if("blusa".equals(myList.get(i).getTipo())) {
            %>
            <img class="bd-placeholder-img card-img-top" src="./assets/images/jaqueta.png" style="padding: 50px; width: 100%;height:75%; align-content: center">
            <%
                } else {
            %>
            <img class="bd-placeholder-img card-img-top" src="./assets/images/imageteste.png" style="padding: 50px; width: 100%;height:75%; align-content: center">
            <%
                }
            %>
            
             <!-- Preenchendo cards -->
            <div class="card-body">
              <h5 class="card-text fw-bold"><%= myList.get(i).getRoupa()%></h5>
              <p class="card-text">
                  <b>Tipo: </b><%= myList.get(i).getTipo()%> | <b>Condição: </b><%= myList.get(i).getCondicao()%><br>  <b>Tamanho: </b><%= myList.get(i).getTamanho()%> | <b>Cor: </b><%= myList.get(i).getCor()%> 
              </p>
              
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                     <!-- Botões para Visualizar/Apagar/Alterar Por ID referente a roupa selecionada -->
                  
                                            <button onclick="document.location = './pages/ConsultarRoupa/VisualizarRoupa.jsp?idRoupa=<%= myList.get(i).getId() %>'" type="button" class="btn btn-sm btn-outline-success">Visualizar</button>
                                            <button  onclick="document.location = 'pages/ApagarRoupa/ActionApagarRoupa.jsp?idRoupa=<%= myList.get(i).getId()%>'" type="button" class="btn btn-sm btn-outline-success">Apagar</button>
                             
                                            <button  onclick="document.location ='pages/AlterarRoupa/AlterarRoupa.jsp?idRoupa=<%= myList.get(i).getId()%>'" type="button" class="btn btn-sm btn-outline-success">Atualizar</button>
                </div>
                <small class="text-body-secondary">Valor:  <span class="fw-bold">R$ <%= myList.get(i).getValor()%></span></small>
              </div>
            </div>
          </div>
        </div>
              
                                        
                                        
                                        
                    <%
                            n_reg++;
                        }

                    %>

            <%
                }else{
                    %>
            <!-- Em caso de erro Redirecionar para pagina de Erro404 -->
                    <script> window.location.href = './pages/Error/404Error.html';</script>
        <%
                };    
            %>
        </main>
        
        
        <button class="btn btn-success" style="padding: 0; border-radius: 100px;" id="btnScrollToTop" type="button" title="Voltar ao Topo"><a class="btn btn-success" style="border-radius: 100px;" href="#"><img width="20px" height="30px" src="assets/images/expand_less_FILL0_wght400_GRAD0_opsz24.svg" alt="alt"/></a></button>
        
         <!-- Rodapé da Pagina -->
         <footer class="text-body-secondary py-5 bg-dark" >
            <div class="container text-light">
                <p class="float-end mb-1" >
                    <a href="#"  ><i class="fa-solid fa-arrow-up"></i></a>
                </p>
                <p class="mb-1">Projeto criado para fins acadêmicos criado pelos alunos: <br> Felipe Matthew - Felipe Rocha - Gabriel Marques - Gustavo Neves - Mateus Gimenes</p>
                <p class="mb-0">Projeto url: <a target="_blank" href="https://github.com/MarkesZks/TradeEStyle">https://github.com/MarkesZks/TradeEStyle</a></p>
            </div>
        </footer>
    </body>
</html>
