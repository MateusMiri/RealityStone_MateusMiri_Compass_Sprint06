Quando('acessar a Recuperação de Senha') do
    @login_page.btn_forgot_password.click
  end
  
  Quando('inserir um e-mail válido') do
    @login_page.input_email_for_recovery.set Factory::Static.static_data[:email]
    @login_page.btn_submit_email_for_recovery.click
  end
  
  Então('deverá ser exibida a mensagem de Recuperação Bem Sucedida') do
    expect(@login_page.password_recovery_message).to have_content Factory::Static.static_data[:password_recovery_success_message]
  end