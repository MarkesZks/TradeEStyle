<%-- 
    Document   : CadastroRoupas.jsp
    Created on : 27 de set. de 2023, 20:10:16
    Author     : 
Felipe Matthew Moreira Nascimento 11221103739
Felipe Rocha Dias 11221104556
Gabriel Marques Messias 11221102170
Gustavo Neves De Paiva 11221103490
Mateus De Barros Gimenes 11221103419
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trade&Style - Cadastro de Roupa</title>
        <link rel="icon" type="image/png" href="../../assets/images/icon.png">
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
                        <li class="nav-item"><a href="#" class="btn btn-success">Cadastrar</a></li>
                    </ul>     
                </div>
            </div>
        </header>
        <div class="container">
             <!-- Tela de cadastro das Roupas-->
            <main>
                <div class="py-5 text-center">
                    <h2>Cadastrar roupa</h2>
                    <p class="lead">Cadastre sua roupa aqui e faça do mundo um lugar melhor!!!!<p>
                </div>
                <div class="row justify-content-center align-items-center">
                    <h4 class="mb-3">Preencha os campos necessários</h4>

                                 <!-- Form onde os campos serão preenchidos -->
                    <form name="FormRoupa" method="post" action="ActionCadRoupas.jsp" class="needs-validation" >
                        <div class="row g-3">
                            <div class="col-sm-12">
                                   <!-- Nome da roupa-->
                                <label for="firstName" class="form-label"><h6>Nome da roupa</h6></label>
                                <input name="nomeRoupa" type="text" class="form-control" placeholder="Camiseta Polo" value="" required>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                                <!-- Condição da Roupa-->
                            <div class="col-sm-12">
                                <label for="condicao" class="form-label"><h6>Condição da roupa</h6></label>
                                <input name="condicao" type="text" class="form-control" placeholder="Usada sem desgastes" value="" required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>


                             <!-- Tipos de roupas-->
                            <div class="col-sm-3">
                                <label for="tipo" class="form-label"><h6>Tipo de roupa</h6> </label>
                                <select name="tipoRoupa" class="form-select" required>
                                    <option value="" selected="selected">Selecione...</option>
                                    <option value="camiseta">Camiseta</option>
                                    <option value="camisa">Camisa</option>
                                    <option value="calca">Calça</option>
                                    <option value="blusa">Blusa</option>
                                    <option value="shorts">Shorts</option>
                                    <option value="sapato">Sapato</option>
                                    <option value="tenis">Tenis</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>
                            <!-- Tamanho da Roupa-->
                            <div class="col-sm-3">
                                <label for="" class="form-label"><h6>Tamanho</h6> </label>
                                <input name="tamanho" type="text" class="form-control" placeholder="XXL" required>
                                <div class="invalid-feedback">
                                    Please enter your shipping teltefone.
                                </div>
                            </div>
                            <!-- Cor da Roupa-->
                            <div class="col-sm-3">
                                <label class="form-label"><h6>Cor</h6></span></label>
                                <input name="cor" type="text" class="form-control" placeholder="Azul Marinho">
                            </div>
                            <!-- Valor da Roupa-->
                            <div class="col-sm-3">
                                <label class="form-label"><h6>Valor</h6></label>
                                <input name="valor" type="number" class="form-control" id="address" placeholder="400,00">
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                        </div>
                        <hr class="my-4">
                        <div class="row justify-content-center align-items-center">
                            <a href=""></a>
                               <!-- Button para ação do cadastro-->
                            <button onclick="document.location = 'ActionCadRoupas.jsp'" style="width: 25%; font-size: 1em" class="btn btn-success btn-lg " type="submit" value="Salvar">Anunciar</button>
                        </div>
                    </form>
                </div>
            </main>
        </div>
    </body>
</html>
