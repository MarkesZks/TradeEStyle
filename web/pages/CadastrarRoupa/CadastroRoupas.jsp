<%-- 
    Document   : Cadastro
    Created on : 27 de set. de 2023, 20:10:16
    Author     : GABRIEL 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 

    </head>
    <body>
          <div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
      <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
              id="bd-theme"
              type="button"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              aria-label="Toggle theme (auto)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
      </button>
      <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
            Light
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
            Dark
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
            Auto
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
      </ul>
    </div>

        
<header data-bs-theme="dark">
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container">
      <a href="../../home.html" class="navbar-brand d-flex align-items-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
        <strong>Trade&Style</strong>
      </a>
         <ul class="nav nav-pills">
             <li class="nav-item"><a href="../../home.html" class="nav-link" aria-current="page">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link active">Roupas</a></li>
            <li class="nav-item"><a href="../../index.html" class="nav-link">Login</a></li> 
         </ul>

    </div>
  </div>
</header>

    
<div class="container">
  <main>
    <div class="py-5 text-center">
      <h2>Cadastrar roupa</h2>
      <p class="lead">Cadastre sua roupa aqui e faça do mundo um lugar melhor!!!!<p>
    </div>

    <div class="row g-5">
      
        
      </div>
      <div class="row justify-content-center align-items-center">
        <h4 class="mb-3">Preencha os campos necessários</h4>
        
        
        <form name="FormRoupa" class="needs-validation" >
          <div class="row g-3">
            <div class="col-sm-12">
                <label for="firstName" class="form-label"><h6>Nome da roupa</h6></label>
                <input name="nomeroupa" type="text" class="form-control" placeholder="Camiseta Polo" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-12">
              <label for="lastName" class="form-label"><h6>Condição da roupa</h6></label>
              <input name="condicao" type="text" class="form-control" placeholder="Usada sem desgastes" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>

     

            <div class="col-3">
              <label for="tipo" class="form-label"><h6>Tipo de roupa</h6> </label>
              <select name="tipoRoupa" class="form-select" required>
                  <option value="" selected="selected">Selecione...</option>
                  <option value="camiseta">Camiseta</option>
                  <option value="camisa">Camisa</option>
                  <option value="calça">Calça</option>
                  <option value="blusa">Blusa</option>
                  <option value="shorts">Shorts</option>
                  <option value="sapato">Sapato</option>
                  <option value="tenis">Tenis</option>
              </select>
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-3">
              <label for="" class="form-label"><h6>Tamanho</h6> </label>
              <input name="tamanho" type="text" class="form-control" placeholder="XXL" required>
              <div class="invalid-feedback">
                Please enter your shipping teltefone.
              </div>
            </div>

            <div class="col-3">
              <label class="form-label"><h6>Cor</h6></span></label>
              <input name="cor" type="text" class="form-control" placeholder="Azul Marinho">
            </div>

            <div class="col-md-3">
              <label class="form-label"><h6>Valor</h6></label>
              <input name="valor" type="number" class="form-control" id="address" placeholder="400,00">
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>
            </div>
          </div>
          <hr class="my-4">
            </div>
            </div>
          </div>   
          <div class="row justify-content-center align-items-center">
              <a href=""></a>
              <button onclick="document.location='ActionCadRoupas.jsp'"  class="w-25 btn btn-primary btn-lg " type="submit" value="Salvar">Anunciar roupa!</button>
          </div>
          
          </div>
          
        </form>
      </div>
    </div>
  </main>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</html>
