<%-- 
    Document   : VisualizarRoupa
    Created on : 28 de set. de 2023, 18:54:56
    Author     : 
Felipe Matthew Moreira Nascimento 11221103739
Felipe Rocha Dias 11221104556
Gabriel Marques Messias 11221102170
Gustavo Neves De Paiva 11221103490
Mateus De Barros Gimenes 11221103419
--%>

<!-- Importar Classes Model Roupa -->
<%@page import="model_dao.RoupaDAO"%>
<%@page import="model.Roupa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Trade&Style - Roupa</title>
        <link rel="icon" type="image/png" href="../../assets/images/icon.png">
        <link rel="stylesheet" href="./assets/style/custom.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </head>
    <body>
        <!-- Cabeçalho de navegação entre telas -->
        <header data-bs-theme="dark">
            <div class="navbar navbar-dark bg-dark shadow-sm">
                <div class="container">
                    <a href="../../home.jsp" class="navbar-brand d-flex align-items-center">
                        <img src="../../assets/images/icon-page.png" width="25" height="25" style="margin-right: 3px" alt="cabide" />
                        <strong>Trade&Style</strong>
                    </a>
                    <ul class="nav nav-pills">
                        <li class="nav-item"><a href="../../home.jsp" class="btn btn-outline-success" aria-current="page" style="margin-right: 20px">Home</a></li>
                        <li class="nav-item"><a href="./ApagarRoupa/ApagarRoupa.jsp" class="btn btn-success">Visualizar</a></li>
                    </ul>     

                </div>
            </div>
        </header>
        <!-- Tela para visualizar Roupa expecifica -->
        <main class="mt-5 flex-fill">
            <div class="container">
                <!-- Apontando para o Id-->
                <%
                    String id = request.getParameter("idRoupa");

                    Roupa roupa = new Roupa();
                    roupa.setId(Integer.parseInt(id));

                    RoupaDAO roupaDAO = new RoupaDAO();

                    if (roupaDAO.consultarId(roupa) != null) {
                %>
                <div class="row g-3">
                    <!-- Preenchendo as imagens da Roupa informada-->

                    <div class="col-12 col-sm-6">
                        <%
                            // Pegar tipo de roupa e trocar imagem da section
                            // Camiseta e Camisa
                            if ("camiseta".equals(roupa.getTipo()) || "camisa".equals(roupa.getTipo())) {
                        %>
                        <img class="bd-placeholder-img card-img-top" src="../../assets/images/imageteste.png" style="padding: 10px; width: 100%;height:75%; align-content: center">
                        <br class="clearfix">
                        <div class="row my-3 gx-3">
                            <div class="col-3">
                                <img src="../../assets/images/imageteste.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/imageteste.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/imageteste.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/imageteste.png" class="img-thumbnail">
                            </div>
                        </div>
                        <%
                            // Calça
                        } else if ("calca".equals(roupa.getTipo())) {
                        %>
                        <img class="bd-placeholder-img card-img-top" src="../../assets/images/calçaImagem.png" style="padding: 10px; width: 100%;height:75%; align-content: center">  
                        <br class="clearfix">
                        <div class="row my-3 gx-3">
                            <div class="col-3">
                                <img src="../../assets/images/calçaImagem.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/calçaImagem.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/calçaImagem.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/calçaImagem.png" class="img-thumbnail">
                            </div>
                        </div>
                        <%
                            //Shorts
                        } else if ("shorts".equals(roupa.getTipo())) {
                        %>
                        <img class="bd-placeholder-img card-img-top" src="../../assets/images/shorts.png" style="padding: 50px; width: 100%;height:75%; align-content: center">
                        <br class="clearfix">
                        <div class="row my-3 gx-3">
                            <div class="col-3">
                                <img src="../../assets/images/shorts.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/shorts.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/shorts.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/shorts.png" class="img-thumbnail">
                            </div>
                        </div>
                        <%
                            // Sapato e Tenis
                        } else if ("sapato".equals(roupa.getTipo()) || "tenis".equals(roupa.getTipo())) {
                        %> 
                        <img class="bd-placeholder-img card-img-top" src="../../assets/images/sapato.png" style="padding: 50px; width: 100%;height:75%; align-content: center">
                        <br class="clearfix">
                        <div class="row my-3 gx-3">
                            <div class="col-3">
                                <img src="../../assets/images/sapato.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/sapato.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/sapato.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/sapato.png" class="img-thumbnail">
                            </div>
                        </div>
                        <%
                        } else if ("blusa".equals(roupa.getTipo())) {
                        %>
                        <img class="bd-placeholder-img card-img-top" src="../../assets/images/jaqueta.png" style="padding: 50px; width: 100%;height:75%; align-content: center">
                        <br class="clearfix">
                        <div class="row my-3 gx-3">
                            <div class="col-3">
                                <img src="../../assets/images/jaqueta.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/jaqueta.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/jaqueta.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/jaqueta.png" class="img-thumbnail">
                            </div>
                        </div>
                        <%
                        } else {
                        %>
                        <img class="bd-placeholder-img card-img-top" src="../../assets/images/imageteste.png" style="padding: 50px; width: 100%;height:75%; align-content: center">
                        <br class="clearfix">
                        <div class="row my-3 gx-3">
                            <div class="col-3">
                                <img src="../../assets/images/imageteste.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/imageteste.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/imageteste.png" class="img-thumbnail">
                            </div>
                            <div class="col-3">
                                <img src="../../assets/images/imageteste.png" class="img-thumbnail">
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                    <div class="col-12 col-sm-6">
                        <!-- Preenchendo as informaçoes da roupa-->
                        <h1><%= roupa.getRoupa()%></h1>
                        <br>
                        <h3 class="mb-2">Valor: R$<%= roupa.getValor()%></h3>
                        <h5 class="mb-2">Tipo: <%= roupa.getTipo()%></h5>
                        <h5 class="mb-2">Tamanho: <%= roupa.getTamanho()%></h5>
                        <h5 class="mb-2">Cor: <%= roupa.getCor()%></h5>
                        <h5 class="mb-2">Condição: <%= roupa.getCondicao()%></h5>
                        <br> <br>
                        <p>
                            <!-- Alterar o cadastro da Roupa-->
                            <button 
                                class="btn btn-lg btn-outline-success mb-3 mb-xl-0 me-2" 
                                onclick="document.location = '../AlterarRoupa/AlterarRoupa.jsp?idRoupa=<%= roupa.getId()%>'"
                                >
                                <i class="bi-cart"></i> Atualizar Dados
                            </button>
                            <!-- Apagar a Roupa informada-->
                            <button 

                                class="btn btn-lg btn-outline-danger mb-3"
                                onclick="document.location = '../ApagarRoupa/ActionApagarRoupa.jsp?idRoupa=<%= roupa.getId()%>'"
                                >
                                <i class="bi-heart"></i> Apagar Roupa
                            </button>
                        </p>
                    </div>
                </div>
                <%
                    } else {
                        out.println("<br> <b>Roupa não encontrada! <b>");
                    };
                %>
            </div>
        </main>
    </body>
</html>
