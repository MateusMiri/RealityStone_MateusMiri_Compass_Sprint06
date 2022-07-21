Dado('que esteja na Página de Login') do
    @login_page = Pages::Login.new
    @login_page.load
end

Quando('o usuário do E-commerce inserir {string} e {string} inválidos') do |email, senha|
    @login_page.checkoutLogin(email, senha)
end

Então('deverá ser exibida a mensagem de erro {string}') do |mensagem|
    expect(@login_page.login_error_message.text).to have_content (mensagem)
  end

Quando('o usuário do E-commerce inserir email e senha válidos') do
    @login_page.checkoutLogin(Factory::Static.static_data[:email], Factory::Static.static_data[:password])
end

Então('o usuário deve ser redirecionado para a Página My Account') do
    @my_account_page = Pages::MyAccount.new
  end

  Então('deverá aparecer a mensagem de boas vindas mensagem') do 
    expect(@my_account_page.login_success_message.text).to have_content Factory::Static.static_data[:welcome_message]
  end