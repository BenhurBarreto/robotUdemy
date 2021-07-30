***Settings***
Resource        ../resource/resource.robot
Test Setup      Abrir Navegador
# Test Teardown   Fechar Navegador

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

Caso de Teste 03: Listar produtos
    Acessar página home do site.
    Passar mouse por cima da categoria "Women" no memu principal superior de categorias.
    Clicar na sub categoria "Summer Dresses".

Caso de Teste 04: Adicionar produtos no carrinho.
    Acessar página home do site.
    Digitar o nome de produto "t-shirt" no campo de pesquisa.
    Clicar no botão de pesquisa.
    Clicar no botão "Add to chart" do produto.
    Clicar no botão "Proceed to checkout".

Caso de Teste 05: Remover produtos.
    Acessar página home do site.
    Clicar no ícone carrinho de compras no menu superior direito.
    Clicar no botão de remoção de produtos (delete) no produto do carrinho.

Caso de Teste 06: Adicionar Cliente.
    Acessar página home do site.
    Clicar no botão superior direito "Sign in".
    Inserir um e-mail válido.
    Clicar no botão "Create an account".
    Preencher os campos obrigatórios.
    Clicar em "Register" para finalizar o cadastro.

# ***Keywords***
