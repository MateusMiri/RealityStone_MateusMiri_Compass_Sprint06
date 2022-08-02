#language: pt

@regression
@register
Funcionalidade: Cadastro
    Como usuário do E-commerce Automation Practice
    Quero realizar cadastro na plataforma
    Para realizar compras

    Contexto: Estar na página de Login
        Dado que esteja na Página de Login

    Cenário: Validar cadastro
        Quando acessar o formulário de Cadastro com um E-mail válido
        E preencher todos os campos do formulário de Cadastro
        Então o cadastro deverá ser realizado com sucesso

    @register_conflict
    Cenário: Validar Duplicidade de Cadastro
        Quando acessar o formulário de Cadastro com um E-mail já registrado
        Então deverá exibir uma mensagem de E-mail já cadastrado


