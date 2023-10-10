<%-- 
    Document   : AlterarRoupaBusca
    Created on : 23/08/2023, 20:27:33
    Author     : 
Felipe Matthew Moreira Nascimento 11221103739
Felipe Rocha Dias 11221104556
Gabriel Marques Messias 11221102170
Gustavo Neves De Paiva 11221103490
Mateus De Barros Gimenes 11221103419
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Trade&Style - Alterar Roupa</title>
        <link rel="icon" type="image/png" href="../../assets/images/icon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
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
                    <li class="nav-item"><a href="../../home.jsp" class="nav-link " aria-current="page">Home</a></li>
                    <li class="nav-item"><a href="./AlterarRoupa/AlterarRoupaBusca.jsp" class="nav-link active">Alterar Roupa</a></li>

                </ul>     

            </div>
        </div>
    </header>  
     <!-- Tela para consultar uma Roupa(ID) em específico   -->
    <div class="container">
        <main>
            <div class="py-5 text-center">
                <h2>Alterar roupa</h2>
                <p class="lead">Altere aqui o cadastro da sua roupa<p>
            </div>

            <div class="row justify-content-center align-items-center">
                <h4 class="mb-3">Informe o id da roupa a ser alterada</h4>
                    <!-- Informe um ID em específico e sera direcionado para AlterarRoupa.jsp  -->
                <form name="frmAltBuscaRoupa" method="post" action="AlterarRoupa.jsp" class="needs-validation">
                    <div class="row g-3">
                        <div class="col-sm-12">
                            <label for="idRoupa" class="form-label"><h6>Id da roupa</h6></label>
                            <input name="idRoupa" type="text" class="form-control" required/>
                            <div class="invalid-feedback">
                                Valid id is required.
                            </div>
                        </div>
                    </div>
                    <hr class="my-4"/>
                    <div class="row justify-content-center align-items-center">
                        <a href=""></a>
                        <button onclick="document.location = 'AlterarRoupa.jsp'"  class="w-25 btn btn-primary btn-lg " type="submit" value="Salvar">Buscar roupa</button>
                    </div>
                </form>
            </div>
        </main>
    </div>
</body>
