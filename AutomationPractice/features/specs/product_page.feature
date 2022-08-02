#language: pt

@regression
@product_page
Funcionalidade: Página do Produto
    Sendo um usuário do E-commerce Automation Practice
    Quero poder selecionar os produtos que desejo comprar
    Para ter uma boa experiência de compra

    Contexto: Estar na Página do Produto
        Dado que esteja na página do Produto

    @change_color
    Cenário: Alterar a cor do produto
        Quando alterar a cor do produto na PDP
        Então deverá trocar a imagem do produto apresentada

    @change_size
    Cenário: Alterar o tamanho do produto
        Quando alterar o tamanho do produto na PDP
        Então deverá exibir o tamanho do produto escolhido

    @change_quantity
    Cenário: Alterar a Quantidade do produto
        Quando alterar a quantidade do produto na PDP
        E adicionar produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho com a quantidade selecionada