***Settings***
Resource        ../resource/resource.robot
Test Setup      Abrir Navegador
Test Teardown   Fechar Navegador

***Variables***


***Test Cases***
Caso de Teste 01: Pesquisar produto existente
    Acessar página home do site.
    Digitar o nome de produto "Blouse" no campo de pesquisa.
    Clicar no botão de pesquisa.
    Conferir se o produto "Blouse" foi exibido.

Caso de Teste 02: Pesquisar produto não existente
    Acessar página home do site.
    Digitar o nome de produto "produtoNãoExistente" no campo de pesquisa.
    Clicar no botão de pesquisa.
    Conferir mensagem de erro "No results were found for your search "produtoNãoExistente"".

# ***Keywords***
