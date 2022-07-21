#language: pt

@regression
@search
Funcionalidade: Busca
    Como usuário do E-commerce AutomationPractice
    Quero realizar uma busca de produtos
    Para ter uma melhor experiência de compra

    Contexto: Estar na Home
        Dado que esteja na home
    
    @search_for_product
    Cenário: Busca por produto
        Quando realizar a busca pela Barra de Busca na Header da página
        Então deverão ser exibidos resultados de busca

    @search_for_different_product
    Esquema do Cenário: Buscar por diferentes produtos
        Quando realizar a busca pela Barra de busca por produtos "<produtos>"
        Então deverão ser exibidos resultados de busca

        Exemplos:
        |    produtos    |
        | Dresses        |
        | Shirts         |
        | Casual Dresses |
        | Summer Dresses |
