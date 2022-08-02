#language: pt

@regression
@password_recovery
Funcionalidade: Recuperação de Senha
    Como usuário do E-commerce Automation Practice
    Quero recuperar minha senha
    Para conseguir acessar minha conta

    Contexto: Estar na Página de Login
        Dado que esteja na Página de Login 

    Cenário: Realizando Recuperação de Senha
        Quando acessar a Recuperação de Senha
        E inserir um e-mail válido
        Então deverá ser exibida a mensagem de Recuperação Bem Sucedida