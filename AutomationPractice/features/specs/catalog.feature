#language: pt

@regression
Funcionalidade: Catálogo
    Como usuário do e-commerce Automation Practice
    Quero filtrar os produtos por características
    Para ter uma melhor experiência de compras

    Contexto:
        Dado que o usuário esteja em uma Página de Categoria de Produtos

    @catalog
    Cenário: Adicionando Filtros no Catálogo
        Quando o usuário selecionar as características do produto que deseja
        Então deverão ser exibidos os resultados de busca