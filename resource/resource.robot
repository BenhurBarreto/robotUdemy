***Settings***
Library         SeleniumLibrary
Library         String

***Variables***
${url}      http://automationpractice.com
${browser}  chrome

***Keywords***

# Definição do Setup e Teardown
Abrir Navegador
    Open Browser    about:blank  ${browser}
    Maximize Browser Window

Fechar Navegador
    Close Browser

# Definição dos Casos de Teste

# Caso de Teste 01
Acessar página home do site.
    Go To   ${url}
    Title Should Be     My Store

Digitar o nome de produto "${produto}" no campo de pesquisa.
    Input Text          name=search_query        ${produto}

Clicar no botão de pesquisa.
    Click Element       name=submit_search

Conferir se o produto "${produto}" foi exibido.
    Wait Until Element Is Visible   css=#center_column > h1
    Title Should Be                 Search - My Store
    Page Should Contain Image       xpath=//*[@id="center_column"]//*[@src='${URL}/img/p/7/7-home_default.jpg']
    Page Should Contain Link        xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${produto}")]

# Caso de Teste 02
Conferir mensagem de erro "${mensagem_de_alerta}".
    Wait Until Element Contains     //*[@id="center_column"]/p    ${mensagem_de_alerta}
    Element Text Should Be          //*[@id="center_column"]/p    ${mensagem_de_alerta}

# Caso de Teste 03
Passar mouse por cima da categoria "${categoria}" no menu principal superior de categorias.
    Mouse Over    xpath=//*[@id="block_top_menu"]//a[contains(text(),"${categoria}")]

Clicar na sub categoria "${sub_categoria}".
    Wait Until Page Contains Element    xpath=//*[@id="block_top_menu"]//a[contains(text(),"${sub_categoria}")]
    Click Element                       xpath=//*[@id="block_top_menu"]//a[contains(text(),"${sub_categoria}")]
    Wait Until Element Is Visible       css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix

# Caso de Teste 04
Clicar no botão "Add to chart" do produto.
    Mouse Over                          css=#center_column > ul > li
    Wait Until Element Is Visible       css=#center_column > ul > li > div > div.right-block > div.button-container > a.button.ajax_add_to_cart_button.btn.btn-default > span
    Click Element                       css=#center_column > ul > li > div > div.right-block > div.button-container > a.button.ajax_add_to_cart_button.btn.btn-default > span

Clicar no botão "Proceed to checkout".
    Wait Until Element Is Visible   xpath=//*[@id="layer_cart"]//a[@title="Proceed to checkout"]
    Click Element                   xpath=//*[@id="layer_cart"]//a[@title="Proceed to checkout"]
    Wait Until Element Is Visible   css=#total_price

# Caso de Teste 05
Clicar no ícone carrinho de compras no menu superior direito.
    Acessar página home do site.
    Digitar o nome de produto "t-shirt" no campo de pesquisa.
    Clicar no botão de pesquisa.
    Clicar no botão "Add to chart" do produto.
    Clicar no botão "Proceed to checkout".
    Click Element                   css=#columns > div.breadcrumb.clearfix > a > i
    Title Should Be                 My Store
    Click Element                   css=#header > div:nth-child(3) > div > div > div:nth-child(3) > div > a
    Wait Until Element Is Visible   css=#total_price
    Title Should Be                 Order - My Store

Clicar no botão de remoção de produtos (delete) no produto do carrinho.
    Click Element                   xpath=//*[@class="cart_quantity_delete"]
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/p
    Wait Until Page Contains        Your shopping cart is empty.

# Caso de Teste 06
Clicar no botão superior direito "${login}".
    Click Element    xpath=//*[@id="header"]//a[contains(text(),"${login}")]
    Wait Until Element Is Visible    xpath=//*[@id="create-account_form"]/h3

Inserir um e-mail válido.
    Wait Until Element Is Visible    xpath=//*[@id="email_create"]
    ${email}=   Generate Random String  8  [LOWER]
    Input Text    xpath=//*[@id="email_create"]    ${email}@gmail.com

Clicar no botão "Create an account".
    Click Element    xpath=//*[@id="SubmitCreate"]
    Wait Until Element Is Visible   css=#account-creation_form > div:nth-child(1) > h3    10

Preencher os campos obrigatórios.
    Click Element    xpath=//*[@id="id_gender1"]
    Input Text    xpath=//*[@id="customer_firstname"]    King Arthur
    Input Text    xpath=//*[@id="customer_lastname"]    Pendragon
    Input Text    xpath=//*[@id="passwd"]    pwd123
    Set Focus To Element  xpath=//*[@id="days"]
    Select From List By Index    xpath=//*[@id="days"]    23
    # Click Element    xpath=//*[@id="days"]
    # Input Text    xpath=//*[@id="days"]    23
    Set Focus To Element  xpath=//*[@id="months"]
    Select From List By Index    xpath=//*[@id="months"]    1
    # Click Element    xpath=//*[@id="months"]
    # Input Text    xpath=//*[@id="months"]    January
    Set Focus To Element  xpath=//*[@id="years"]
    Select From List By Value    xpath=//*[@id="years"]     1990
    # Click Element    xpath=//*[@id="years"]
    # Input Text    xpath=//*[@id="years"]    1990
    Input Text    xpath=//*[@id="company"]    none
    Input Text    xpath=//*[@id="address1"]    Private Street
    Input Text    xpath=//*[@id="city"]    London
    Set Focus To Element  xpath=//*[@id="id_state"]
    Select From List By Index    xpath=//*[@id="id_state"]    22
    # Click Element    xpath=//*[@id="id_state"]
    # Input Text    xpath=//*[@id="id_state"]    Michigan
    Input Text    xpath=//*[@id="postcode"]    65982
    # Click Element    xpath=//*[@id="id_country"]
    # Input Text    xpath=//*[@id="id_country"]    United States
    Input Text    xpath=//*[@id="phone_mobile"]    985653248

Clicar em "Register" para finalizar o cadastro.
    Click Element    xpath=//*[@id="submitAccount"]/span
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]//*[contains(text(),"My account")]
