#language: pt

@regression
@register
Funcionalidade: Cadastro
    Como usuário do E-commerce AutomationPractice
    Quero realizar cadastro na plataforma
    Para realizar compras

    Contexto: Estar na página de Login
    Dado que esteja na Página de Login
    E acesse o formulário de Cadastro com um E-mail válido

    Cenário: Validar cadastro
        Quando preencher todos os campos do formulário de Cadastro
        Então o cadastro deverá ser realizado com sucesso


