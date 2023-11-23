<%-- 
    Document   : AlterarRoupa.jsp
    Created on : 23/08/2023, 21:06:22
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
        <title>Trade&Style - Alterar Roupa</title>
        <link rel="icon" type="image/png" href="../../assets/images/icon.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/style/custom.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-25..200"/>
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
                        <li class="nav-item"><a href="./pages/AlterarRoupa/AlterarRoupaBusca.jsp" class="btn btn-success">Alterar</a></li>

                    </ul>     

                </div>
            </div>
        </header>
        <div class="container">
            <div class="py-5 text-center">
                <h2>Alterar roupa</h2>
                <p class="lead">Altere aqui o cadastro da sua roupa</p>
            </div>

            <div class="row justify-content-center align-items-center">
                <h4 class="mb-3">Altere os campos desejados</h4>
                <!-- Apontando para o ID selecionado  -->
                <%
                    String id = request.getParameter("idRoupa");

                    Roupa roupa = new Roupa();
                    roupa.setId(Integer.parseInt(id));

                    RoupaDAO roupaDAO = new RoupaDAO();

                    if (roupaDAO.consultarId(roupa) != null) {
                %>           

                   <!-- Forms Já preenchidos com as informações já registradas do Id  -->
                <form  name="frmAltRoupa" method="post" action="ActionAlterarRoupa.jsp">
                    <!-- Id  -->
                    <div class="col-sm-12">
                        <label for="id" class="form-label"><h6>ID: </h6></label>
                        <input 
                            name="idRoupa"
                            type="text"
                            class="form-control"
                            readonly="true"
                            value="<%= roupa.getId()%>" required
                            >
                    </div>
                                 <!-- Nome da Roupa  -->
                    <div class="row g-3">
                        <div class="col-sm-12">
                            <label for="firstName" class="form-label"><h6>Nome da roupa: </h6></label>
                            <input name="nomeRoupa" type="text" class="form-control" value="<%= roupa.getRoupa()%>" required/>
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                        <!-- Condição da Roupa  -->
                        <div class="col-sm-12">
                            <label for="condicao" class="form-label"><h6>Condição da roupa: </h6></label>
                            <input name="condicao" type="text" class="form-control" value="<%= roupa.getCondicao()%>" required/>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>
                        <!-- Tipo de Roupa  -->
                        <div class="row g-3">
                            <div class="col-sm-3">
                                <label for="tipoRoupa" class="form-label"><h6>Tipo de roupa: </h6></label>
                                <input name="tipoRoupa" type="text" class="form-control" value="<%= roupa.getTipo()%>" required/>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                        <!-- Tamanho da roupa -->
                            <div class="col-sm-3">
                                <label for="tamanho" class="form-label"><h6>Tamanho: </h6></label>
                                <input name="tamanho" type="text" class="form-control" value="<%= roupa.getTamanho()%>" required/>
                                <div class="invalid-feedback">
                                    Please enter your shipping teltefone.
                                </div>
                            </div>
                        <!-- Cor da Roupa  -->
                            <div class="col-sm-3">
                                <label for="cor" class="form-label"><h6>Cor: </h6></label>
                                <input name="cor" type="text" class="form-control" value="<%= roupa.getCor()%>"/>
                            </div>
                        <!-- Valor da Roupa  -->
                            <div class="col-sm-3">
                                <label for="valor" class="form-label"><h6>Valor: </h6></label>
                                <input name="valor" type="number" class="form-control" id="valor" value="<%= roupa.getValor()%>"/>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="my-4"/>
                    <div class="row justify-content-center align-items-center">
                        <br/>
                        <button  onclick="document.location = './ActionAlterarRoupa.jsp'" class="w-25 btn btn-success btn-lg" type="submit" value="Alterar">Alterar</button>
                    </div>
                </form>

                <%
                    } else {
                        out.println("<br> <b>Roupa não encontrada! <b>");
                    }

                %>   
            </div>         
        </div>        
    </body>
</html>
