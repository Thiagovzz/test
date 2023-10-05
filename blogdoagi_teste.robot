*** Settings ***
Documentation          Essa suíte testa o site da blogdoagi.com.br
Resource               blogdoagi_resources.robot
Test Setup             Abrir o navegador
Test Teardown          Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Acessar a funcionalidade de pesquisa "Lupa"
    [Documentation]    Esse teste verifica a funcionalidade do ícone lupa do site blogdoagi.com.br
    [Tags]             lupa
    Dado que estou na home page do site blogdoagi.com.br
    Quando eu acionar o ícone lupa
    Então validarei à apresentação do campo de Pesquisa e o botão pesquisar

Caso de teste 02 - Validar o campo "Pesquisar"
    [Documentation]    Esse teste verifica a funcionalidade do campo pesquisar
    [Tags]             pesquisar
    Dado que estou na home page do site blogdoagi.com.br
    E farei uma Pesquisa
    Quando eu digitar o texto "Letras Financeiras Públicas" no campo pesquisa
    Então validarei se o texto está sendo apresentado na página
