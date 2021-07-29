***Settings***
Resource        ../resource/resource.robot
Test Setup      Abrir Navegador
Test Teardown   Fechar Navegador

***Variables***


***Test Cases***
Cenário 01: Pesquisar produto existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 01: Pesquisar produto não existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "produtoNãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "produtoNãoExistente""

***Keywords***
Dado que estou na página home do site
    Acessar página home do site.

Quando eu pesquisar pelo produto "${produto}"
    Digitar o nome de produto "${produto}" no campo de pesquisa.
    Clicar no botão de pesquisa.

Então o produto "${produto}" deve ser listado na página de resultado da busca
    Conferir se o produto "${produto}" foi exibido.

Então a página deve exibir a mensagem "${mensagem_de_alerta}"
    Conferir mensagem de erro "${mensagem_de_alerta}".
