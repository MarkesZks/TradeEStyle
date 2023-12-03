<%-- 
    Document   : CadastroUser.jsp
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
        <title>Trade&Style - Cadastro Usuário</title>
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

                        <li class="nav-item"><a href="../../index.html" class="btn btn-outline-success " style="margin-right: 20px ">Login</a></li>
                        <li class="nav-item"><a href="#" class="btn btn-success">Cadastro</a></li>
                    </ul>     

                </div>
            </div>
        </header>
           <!-- Tela de cadastro de usuarios-->
        <div class="container">
            <main>
                <div class="py-5 text-center">
                    <h2>Cadastrar usuário</h2>
                    <p class="lead">Venha fazer parte da nossa campanha! Cadastre-se agora e coloque suas roupas!!</p>
                </div>

                <div class="row justify-content-center align-items-center">
                    <h4 class="mb-3 text-center">Preencha suas credenciais</h4>
                    <!-- Form onde os campos serão preenchidos -->
                    <form name="FormUser" method="post" action="actionUser.jsp" class="needs-validation">
                        <!-- Nome do Usuario -->
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="nome" class="form-label"><h6>Nome</h6></label>
                                <input name="nome" type="text" class="form-control" id="nome" required>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                        <!-- Senha do Usuario -->
                            <div class="col-sm-6">
                                <label for="senha" class="form-label"><h6>Senha</h6></label>
                                <input name="senha" type="password" class="form-control" id="senha"  required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>
                        <!-- Username do Usuario -->

                            <div class="col-sm-6">
                                <label for="username" class="form-label"><h6>Username</h6></label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text">@</span>
                                    <input name="username" type="text" class="form-control" id="username" placeholder="fulanodetal123" required>
                                    <div class="invalid-feedback">
                                        Your username is required.
                                    </div>
                                </div>
                            </div>
                        <!-- Email do Usuario -->
                            <div class="col-sm-6">
                                <label for="email" class="form-label"><h6>E-mail <span class="text-body-secondary"> (Opicional)</span></h6> </label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="teste@teste.com">
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>
                        <!-- Telefone do Usuario -->
                            <div class="col-sm-6">
                                <label for="telefone" class="form-label"><h6>Telefone</h6> </label>
                                <input name="telefone" type="text" class="form-control" id="telefone" placeholder="(xx) xxxxx-xxxx" required>
                                <div class="invalid-feedback">
                                    Please enter your shipping teltefone.
                                </div>
                            </div>
                        <!-- Endereço do Usuario -->
                            <div class="col-sm-6">
                                <label for="endereco" class="form-label"><h6>Endereço <span class="text-body-secondary"> (Opicional)</span></h6></span></label>
                                <input name="endereco" type="text" class="form-control" id="endereco" placeholder="Rua Aurora">
                            </div>
                        <!-- Lista de Paises -->
                            <div class="col-sm-6">
                                <label for="pais" class="form-label"><h6>País</h6></label>
                                <select name="pais" class="form-select" id="pais" required>
                                    <option value="Brasil" selected="selected">Brasil</option>
                                    <option value="Afeganistão">Afeganistão</option>
                                    <option value="África do Sul">África do Sul</option>
                                    <option value="Albânia">Albânia</option>
                                    <option value="Alemanha">Alemanha</option>
                                    <option value="Andorra">Andorra</option>
                                    <option value="Angola">Angola</option>
                                    <option value="Anguilla">Anguilla</option>
                                    <option value="Antilhas Holandesas">Antilhas Holandesas</option>
                                    <option value="Antárctida">Antárctida</option>
                                    <option value="Antígua e Barbuda">Antígua e Barbuda</option>
                                    <option value="Argentina">Argentina</option>
                                    <option value="Argélia">Argélia</option>
                                    <option value="Armênia">Armênia</option>
                                    <option value="Aruba">Aruba</option>
                                    <option value="Arábia Saudita">Arábia Saudita</option>
                                    <option value="Austrália">Austrália</option>
                                    <option value="Áustria">Áustria</option>
                                    <option value="Azerbaijão">Azerbaijão</option>
                                    <option value="Bahamas">Bahamas</option>
                                    <option value="Bahrein">Bahrein</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                    <option value="Barbados">Barbados</option>
                                    <option value="Belize">Belize</option>
                                    <option value="Benim">Benim</option>
                                    <option value="Bermudas">Bermudas</option>
                                    <option value="Bielorrússia">Bielorrússia</option>
                                    <option value="Bolívia">Bolívia</option>
                                    <option value="Botswana">Botswana</option>
                                    <option value="Brunei">Brunei</option>
                                    <option value="Bulgária">Bulgária</option>
                                    <option value="Burkina Faso">Burkina Faso</option>
                                    <option value="Burundi">Burundi</option>
                                    <option value="Butão">Butão</option>
                                    <option value="Bélgica">Bélgica</option>
                                    <option value="Bósnia e Herzegovina">Bósnia e Herzegovina</option>
                                    <option value="Cabo Verde">Cabo Verde</option>
                                    <option value="Camarões">Camarões</option>
                                    <option value="Camboja">Camboja</option>
                                    <option value="Canadá">Canadá</option>
                                    <option value="Catar">Catar</option>
                                    <option value="Cazaquistão">Cazaquistão</option>
                                    <option value="Chade">Chade</option>
                                    <option value="Chile">Chile</option>
                                    <option value="China">China</option>
                                    <option value="Chipre">Chipre</option>
                                    <option value="Colômbia">Colômbia</option>
                                    <option value="Comores">Comores</option>
                                    <option value="Coreia do Norte">Coreia do Norte</option>
                                    <option value="Coreia do Sul">Coreia do Sul</option>
                                    <option value="Costa do Marfim">Costa do Marfim</option>
                                    <option value="Costa Rica">Costa Rica</option>
                                    <option value="Croácia">Croácia</option>
                                    <option value="Cuba">Cuba</option>
                                    <option value="Dinamarca">Dinamarca</option>
                                    <option value="Djibouti">Djibouti</option>
                                    <option value="Dominica">Dominica</option>
                                    <option value="Egito">Egito</option>
                                    <option value="El Salvador">El Salvador</option>
                                    <option value="Emirados Árabes Unidos">Emirados Árabes Unidos</option>
                                    <option value="Equador">Equador</option>
                                    <option value="Eritreia">Eritreia</option>
                                    <option value="Escócia">Escócia</option>
                                    <option value="Eslováquia">Eslováquia</option>
                                    <option value="Eslovênia">Eslovênia</option>
                                    <option value="Espanha">Espanha</option>
                                    <option value="Estados Federados da Micronésia">Estados Federados da Micronésia</option>
                                    <option value="Estados Unidos">Estados Unidos</option>
                                    <option value="Estônia">Estônia</option>
                                    <option value="Etiópia">Etiópia</option>
                                    <option value="Fiji">Fiji</option>
                                    <option value="Filipinas">Filipinas</option>
                                    <option value="Finlândia">Finlândia</option>
                                    <option value="França">França</option>
                                    <option value="Gabão">Gabão</option>
                                    <option value="Gana">Gana</option>
                                    <option value="Geórgia">Geórgia</option>
                                    <option value="Gibraltar">Gibraltar</option>
                                    <option value="Granada">Granada</option>
                                    <option value="Gronelândia">Gronelândia</option>
                                    <option value="Grécia">Grécia</option>
                                    <option value="Guadalupe">Guadalupe</option>
                                    <option value="Guam">Guam</option>
                                    <option value="Guatemala">Guatemala</option>
                                    <option value="Guernesei">Guernesei</option>
                                    <option value="Guiana">Guiana</option>
                                    <option value="Guiana Francesa">Guiana Francesa</option>
                                    <option value="Guiné">Guiné</option>
                                    <option value="Guiné Equatorial">Guiné Equatorial</option>
                                    <option value="Guiné-Bissau">Guiné-Bissau</option>
                                    <option value="Gâmbia">Gâmbia</option>
                                    <option value="Haiti">Haiti</option>
                                    <option value="Honduras">Honduras</option>
                                    <option value="Hong Kong">Hong Kong</option>
                                    <option value="Hungria">Hungria</option>
                                    <option value="Ilha Bouvet">Ilha Bouvet</option>
                                    <option value="Ilha de Man">Ilha de Man</option>
                                    <option value="Ilha do Natal">Ilha do Natal</option>
                                    <option value="Ilha Heard e Ilhas McDonald">Ilha Heard e Ilhas McDonald</option>
                                    <option value="Ilha Norfolk">Ilha Norfolk</option>
                                    <option value="Ilhas Cayman">Ilhas Cayman</option>
                                    <option value="Ilhas Cocos (Keeling)">Ilhas Cocos (Keeling)</option>
                                    <option value="Ilhas Cook">Ilhas Cook</option>
                                    <option value="Ilhas Feroé">Ilhas Feroé</option>
                                    <option value="Ilhas Geórgia do Sul e Sandwich do Sul">Ilhas Geórgia do Sul e Sandwich do Sul</option>
                                    <option value="Ilhas Malvinas">Ilhas Malvinas</option>
                                    <option value="Ilhas Marshall">Ilhas Marshall</option>
                                    <option value="Ilhas Menores Distantes dos Estados Unidos">Ilhas Menores Distantes dos Estados Unidos</option>
                                    <option value="Ilhas Salomão">Ilhas Salomão</option>
                                    <option value="Ilhas Virgens Americanas">Ilhas Virgens Americanas</option>
                                    <option value="Ilhas Virgens Britânicas">Ilhas Virgens Britânicas</option>
                                    <option value="Ilhas Åland">Ilhas Åland</option>
                                    <option value="Indonésia">Indonésia</option>
                                    <option value="Inglaterra">Inglaterra</option>
                                    <option value="Índia">Índia</option>
                                    <option value="Iraque">Iraque</option>
                                    <option value="Irlanda do Norte">Irlanda do Norte</option>
                                    <option value="Irlanda">Irlanda</option>
                                    <option value="Irã">Irã</option>
                                    <option value="Islândia">Islândia</option>
                                    <option value="Israel">Israel</option>
                                    <option value="Itália">Itália</option>
                                    <option value="Iêmen">Iêmen</option>
                                    <option value="Jamaica">Jamaica</option>
                                    <option value="Japão">Japão</option>
                                    <option value="Jersey">Jersey</option>
                                    <option value="Jordânia">Jordânia</option>
                                    <option value="Kiribati">Kiribati</option>
                                    <option value="Kuwait">Kuwait</option>
                                    <option value="Laos">Laos</option>
                                    <option value="Lesoto">Lesoto</option>
                                    <option value="Letônia">Letônia</option>
                                    <option value="Libéria">Libéria</option>
                                    <option value="Liechtenstein">Liechtenstein</option>
                                    <option value="Lituânia">Lituânia</option>
                                    <option value="Luxemburgo">Luxemburgo</option>
                                    <option value="Líbano">Líbano</option>
                                    <option value="Líbia">Líbia</option>
                                    <option value="Macau">Macau</option>
                                    <option value="Macedônia">Macedônia</option>
                                    <option value="Madagáscar">Madagáscar</option>
                                    <option value="Malawi">Malawi</option>
                                    <option value="Maldivas">Maldivas</option>
                                    <option value="Mali">Mali</option>
                                    <option value="Malta">Malta</option>
                                    <option value="Malásia">Malásia</option>
                                    <option value="Marianas Setentrionais">Marianas Setentrionais</option>
                                    <option value="Marrocos">Marrocos</option>
                                    <option value="Martinica">Martinica</option>
                                    <option value="Mauritânia">Mauritânia</option>
                                    <option value="Maurícia">Maurícia</option>
                                    <option value="Mayotte">Mayotte</option>
                                    <option value="Moldávia">Moldávia</option>
                                    <option value="Mongólia">Mongólia</option>
                                    <option value="Montenegro">Montenegro</option>
                                    <option value="Montserrat">Montserrat</option>
                                    <option value="Moçambique">Moçambique</option>
                                    <option value="Myanmar">Myanmar</option>
                                    <option value="México">México</option>
                                    <option value="Mônaco">Mônaco</option>
                                    <option value="Namíbia">Namíbia</option>
                                    <option value="Nauru">Nauru</option>
                                    <option value="Nepal">Nepal</option>
                                    <option value="Nicarágua">Nicarágua</option>
                                    <option value="Nigéria">Nigéria</option>
                                    <option value="Niue">Niue</option>
                                    <option value="Noruega">Noruega</option>
                                    <option value="Nova Caledônia">Nova Caledônia</option>
                                    <option value="Nova Zelândia">Nova Zelândia</option>
                                    <option value="Níger">Níger</option>
                                    <option value="Omã">Omã</option>
                                    <option value="Palau">Palau</option>
                                    <option value="Palestina">Palestina</option>
                                    <option value="Panamá">Panamá</option>
                                    <option value="Papua-Nova Guiné">Papua-Nova Guiné</option>
                                    <option value="Paquistão">Paquistão</option>
                                    <option value="Paraguai">Paraguai</option>
                                    <option value="País de Gales">País de Gales</option>
                                    <option value="Países Baixos">Países Baixos</option>
                                    <option value="Peru">Peru</option>
                                    <option value="Pitcairn">Pitcairn</option>
                                    <option value="Polinésia Francesa">Polinésia Francesa</option>
                                    <option value="Polônia">Polônia</option>
                                    <option value="Porto Rico">Porto Rico</option>
                                    <option value="Portugal">Portugal</option>
                                    <option value="Quirguistão">Quirguistão</option>
                                    <option value="Quênia">Quênia</option>
                                    <option value="Reino Unido">Reino Unido</option>
                                    <option value="República Centro-Africana">República Centro-Africana</option>
                                    <option value="República Checa">República Checa</option>
                                    <option value="República Democrática do Congo">República Democrática do Congo</option>
                                    <option value="República do Congo">República do Congo</option>
                                    <option value="República Dominicana">República Dominicana</option>
                                    <option value="Reunião">Reunião</option>
                                    <option value="Romênia">Romênia</option>
                                    <option value="Ruanda">Ruanda</option>
                                    <option value="Rússia">Rússia</option>
                                    <option value="Saara Ocidental">Saara Ocidental</option>
                                    <option value="Saint Martin">Saint Martin</option>
                                    <option value="Saint-Barthélemy">Saint-Barthélemy</option>
                                    <option value="Saint-Pierre e Miquelon">Saint-Pierre e Miquelon</option>
                                    <option value="Samoa Americana">Samoa Americana</option>
                                    <option value="Samoa">Samoa</option>
                                    <option value="Santa Helena, Ascensão e Tristão da Cunha">Santa Helena, Ascensão e Tristão da Cunha</option>
                                    <option value="Santa Lúcia">Santa Lúcia</option>
                                    <option value="Senegal">Senegal</option>
                                    <option value="Serra Leoa">Serra Leoa</option>
                                    <option value="Seychelles">Seychelles</option>
                                    <option value="Singapura">Singapura</option>
                                    <option value="Somália">Somália</option>
                                    <option value="Sri Lanka">Sri Lanka</option>
                                    <option value="Suazilândia">Suazilândia</option>
                                    <option value="Sudão">Sudão</option>
                                    <option value="Suriname">Suriname</option>
                                    <option value="Suécia">Suécia</option>
                                    <option value="Suíça">Suíça</option>
                                    <option value="Svalbard e Jan Mayen">Svalbard e Jan Mayen</option>
                                    <option value="São Cristóvão e Nevis">São Cristóvão e Nevis</option>
                                    <option value="São Marino">São Marino</option>
                                    <option value="São Tomé e Príncipe">São Tomé e Príncipe</option>
                                    <option value="São Vicente e Granadinas">São Vicente e Granadinas</option>
                                    <option value="Sérvia">Sérvia</option>
                                    <option value="Síria">Síria</option>
                                    <option value="Tadjiquistão">Tadjiquistão</option>
                                    <option value="Tailândia">Tailândia</option>
                                    <option value="Taiwan">Taiwan</option>
                                    <option value="Tanzânia">Tanzânia</option>
                                    <option value="Terras Austrais e Antárticas Francesas">Terras Austrais e Antárticas Francesas</option>
                                    <option value="Território Britânico do Oceano Índico">Território Britânico do Oceano Índico</option>
                                    <option value="Timor-Leste">Timor-Leste</option>
                                    <option value="Togo">Togo</option>
                                    <option value="Tonga">Tonga</option>
                                    <option value="Toquelau">Toquelau</option>
                                    <option value="Trinidad e Tobago">Trinidad e Tobago</option>
                                    <option value="Tunísia">Tunísia</option>
                                    <option value="Turcas e Caicos">Turcas e Caicos</option>
                                    <option value="Turquemenistão">Turquemenistão</option>
                                    <option value="Turquia">Turquia</option>
                                    <option value="Tuvalu">Tuvalu</option>
                                    <option value="Ucrânia">Ucrânia</option>
                                    <option value="Uganda">Uganda</option>
                                    <option value="Uruguai">Uruguai</option>
                                    <option value="Uzbequistão">Uzbequistão</option>
                                    <option value="Vanuatu">Vanuatu</option>
                                    <option value="Vaticano">Vaticano</option>
                                    <option value="Venezuela">Venezuela</option>
                                    <option value="Vietname">Vietname</option>
                                    <option value="Wallis e Futuna">Wallis e Futuna</option>
                                    <option value="Zimbabwe">Zimbabwe</option>
                                    <option value="Zâmbia">Zâmbia</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                             <!-- Lista de Estados -->
                            <div class="col-md-6">
                                <label for="estado" class="form-label"><h6>Estados</h6></label>
                                <select name="estado" class="form-select" id="estado" required>
                                    <option value="AC">Acre</option>
                                    <option value="AL">Alagoas</option>
                                    <option value="AP">Amapá</option>
                                    <option value="AM">Amazonas</option>
                                    <option value="BA">Bahia</option>
                                    <option value="CE">Ceara</option>
                                    <option value="DF">Distrito Federal</option>
                                    <option value="ES">Espírito Santo</option>
                                    <option value="GO">Goiás</option>
                                    <option value="MA">Maranhão</option>
                                    <option value="MT">Mato Grosso</option>
                                    <option value="MS">Mato Grosso do Sul</option>
                                    <option value="MG">Minas Gerais</option>
                                    <option value="PA">Pará</option>
                                    <option value="PB">Paraíba</option>
                                    <option value="PR">Paraná</option>
                                    <option value="PE">Pernambuco</option>
                                    <option value="PI">Piauí</option>
                                    <option value="RJ">Rio de Janeiro</option>
                                    <option value="RN">Rio Grande do Norte</option>
                                    <option value="RS">Rio Grande do Sul</option>
                                    <option value="RO">Rondônia</option>
                                    <option value="RR">Roraima</option>
                                    <option value="SC">Santa Catarina</option>
                                    <option value="SP" selected="São Paulo">São Paulo</option>
                                    <option value="SE">Sergipe</option>
                                    <option value="TO">Tocantins</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>

                        </div>
                        <hr class="my-4">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="save-info">
                            <label class="form-check-label" for="save-info">Aceitar termos do usuário e realizar criação</label>
                        </div>
                        <hr class="my-4">
                        <div class="row justify-content-center align-items-center">
                            <!-- Button para ação do cadastro-->
                            <button class="w-50 btn btn-success btn-lg mb-5 " type="submit" value="Salvar">Cadastrar </button>
                        </div> 
                    </form>
                </div>
            </main>
        </div>   
    </body>
</html>
