#language: pt

@regression
@payment
Funcionalidade: Pagamento
    Como usuário do E-commerce AutomationPractice
    Quero realizar pagamentos
    Para conseguir efetuar compras

    Contexto: Estar na Página do Produto
    Dado que esteja na Página do Produto
    E adicionar o Produto ao Carrinho
    E proceder ao Checkout
    E realizar ao Login
    E confirmar o Endereço de Entrega e de Fatura
    E escolher o método de Entrega

    Cenário: Realizando Pagamento por Cheque
        Quando selecionar a Forma de Pagamento por Cheque
        E confirmar o Pedido
        Então o pedido com cheque deverá ser finalizado com Sucesso
    
    Cenário: Realizando Pagamento por Transferência Bancária
        Quando selecionar a Forma de Pagamento por Transferência Bancária
        E confirmar o Pedido
        Então o pedido com Transferência Bancária deverá ser finalizado com Sucesso