*** Settings ***
Documentation          Essa suíte testa o site da blogdoagi.com.br
Resource               blogdoagi_resources.robot
Test Setup             Abrir o navegador
Test Teardown          Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Acessa a funcionalidade de pesquisa "Lupa"
    [Documentation]    Esse teste verifica a funcionalidade do ícone lupa do site blogdoagi.com.br
    [Tags]             lupa

    Acessar a home page do site blogdoagi.com.br
    Acionar o ícone lupa
    Validar apresentação do campo de Pesquisa e o botão de pesquisar
Caso de teste 02 - Valida o campo "Pesquisar"
     [Documentation]    Esse teste verifica a funcionalidade do campo pesquisar
     [Tags]             pesquisar
     Acessar a home page do site blogdoagi.com.br
     Acionar o ícone lupa
     Validar apresentação do campo de Pesquisa e o botão de pesquisar
     Digitar o texto "Letras Financeiras Públicas" no campo pesquisar
     Validar se o texto é apresentado na página
 