***Settings***
Library         SeleniumLibrary

***Variables***
${url}      http://automationpractice.com/index.php
${browser}  chrome

***Keywords***

# Definição do Setup e Teardown
Abrir Navegador
    Open Browser    about:blank  ${browser}

Fechar Navegador
    Close Browser

# Definição dos Casos de Teste

# Caso de Teste 01
Acessar página home do site.
    Go To   ${url}
    Title Should Be     My Store

Digitar o nome de produto "${produto}" no campo de pesquisa.
    Input Text      name=search_query        ${produto}

Clicar no botão de pesquisa.
    Click Element       name=submit_search

Conferir se o produto "${produto}" foi exibido.
    Wait Until Element Is Visible   css=#center_column > h1
    Title Should Be     Search - My Store
    Page Should Contain Image   xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Page Should Contain Link     xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${produto}")]

# Caso de Teste 02
Conferir mensagem de erro "${mensagem_de_alerta}".
    Wait Until Element Contains     //*[@id="center_column"]/p    ${mensagem_de_alerta}
    Element Text Should Be          //*[@id="center_column"]/p    ${mensagem_de_alerta}