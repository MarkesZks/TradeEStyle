<%-- 
    Document   : VisualizarRoupa
    Created on : 28 de set. de 2023, 18:54:56
    Author     : GABRIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./assets/style/custom.css" />
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
             <li class="nav-item"><a href="../index.html" class="nav-link active" aria-current="page">Home</a></li>
             <li class="nav-item"><a href="CadastroRoupas.jsp" class="nav-link">Roupas</a></li>
             <li class="nav-item"><a href="CadastroUser.jsp" class="nav-link">Cadastro</a></li>
      </ul>     
 </div> 
  </div>
        </header>
          <main class="mt-5 flex-fill">
            <div class="container">
                <div class="row g-3">
                    <div class="col-12 col-sm-6">
                        <img src="../assets/images/image 18.png" class="img-thumbnail" id="imgProduto">
                        <br class="clearfix">
                        <div class="row my-3 gx-3">
                            <div class="col-3">
                                <img src="../assets/images/image 18.png" class="img-thumbnail" onclick="trocarImagem(this)">
                            </div>
                            <div class="col-3">
                                <img src="../assets/images/image 18.png" class="img-thumbnail" onclick="trocarImagem(this)">
                            </div>
                            <div class="col-3">
                                <img src="../assets/images/image 18.png" class="img-thumbnail" onclick="trocarImagem(this)">
                            </div>
                            <div class="col-3">
                                <img src="../assets/images/image 18.png" class="img-thumbnail" onclick="trocarImagem(this)">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <h1>Camisa Polo</h1>
                        <h4 class="mb-2">R$200</h4>
                        <h6 class="mb-2">Color: White</h6>
                        <p>
                            Do ut ad quis et qui qui tempor do irure laborum ullamco excepteur. Adipisicing ipsum ad
                            excepteur sit ipsum adipisicing. Ut ut elit proident fugiat. Ad deserunt et consequat
                            aliquip nisi ut dolore sit ut veniam fugiat culpa nulla. Consequat eiusmod ad deserunt ad
                            sunt adipisicing deserunt nulla est cupidatat commodo do. Minim aliquip dolor in deserunt
                            elit officia. Anim duis ullamco cillum nulla voluptate dolore velit ad Lorem adipisicing.
                        </p>
                        <p>
                            <button class="btn btn-lg btn-success mb-3 mb-xl-0 me-2">
                                <i class="bi-cart"></i> Adicionar ao Carrinho
                            </button>
                            <button class="btn btn-lg btn-outline-danger">
                                <i class="bi-heart"></i> Adicionar aos Favoritos
                            </button>
                        </p>
                    </div>
                </div>
            </div>
        </main>
    </body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>

</html>
