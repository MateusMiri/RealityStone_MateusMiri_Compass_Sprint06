#language: pt

@regression
@login
Funcionalidade: Login
    Como usuário do E-commerce Automation Practice
    Quero realizar login na plataforma
    Para realizar compras

    Contexto:
        Dado que esteja na Página de Login 

    Esquema do Cenário: Login Inválido
        Quando o usuário do E-commerce inserir "<e-mail>" e "<senha>" inválidos 
        Então deverá ser exibida a mensagem de erro "<mensagem>"    

    Exemplos:
    |    e-mail               |    senha    | mensagem                   |
    |                         | Abcdefg     | An email address required. |
    | teste@teste15.com       |             | Password is required.      |
    | teste@teste15.com       | sdfsdfsdf   | Authentication failed.     |

    @valid_login
    Cenário: Login Válido
        Quando o usuário do E-commerce inserir email e senha válidos 
        Então o usuário deve ser redirecionado para a Página My Account
        E deverá aparecer a mensagem de boas vindas mensagem