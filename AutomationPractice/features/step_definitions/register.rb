Dado('acesse o formulário de Cadastro com um E-mail válido') do
    @login_page.input_email_for_register.set Factory::Dynamic.dynamic_data[:register_email]
    @login_page.btn_submit_email.click
    @login_page.wait_until_registerForm_visible(wait: 7)
  end
  
  Quando('preencher todos os campos do formulário de Cadastro') do
    @login_page.preencher_cadastro()
    @login_page.btn_register_submit.click
    @my_account_page = Pages::MyAccount.new
  end
  
  Então('o cadastro deverá ser realizado com sucesso') do
    expect(@my_account_page.login_success_message.text).to have_content Factory::Static.static_data[:welcome_message]
  end