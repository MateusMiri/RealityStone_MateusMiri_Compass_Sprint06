require_relative '../sections/login.rb'
require_relative '../sections/register'

module Pages
    class Login < SitePrism::Page
        set_url '/?controller=authentication&back=my-account'
    
        #Register Elements
        element :input_email_for_register, '[name="email_create"]'
        element :btn_submit_email, '[id="SubmitCreate"]'
        element :registerForm, '[class="std box"]'

        #Password Recovery
        element :btn_forgot_password, '[title="Recover your forgotten password"]'
        element :input_email_for_recovery, '[id="email"]'
        element :btn_submit_email_for_recovery, '[id="form_forgotpassword"] [class="btn btn-default button button-medium"]'
        element :password_recovery_message, '[class="alert alert-success"]'

        element :login_error_message, '[class="alert alert-danger"] li'

        section :loginSection, Sections::LoginSection, '[id="login_form"]'
        section :registerSection, Sections::Register, '[id="authentication"] [id="center_column"]'

        def preencher_cadastro()
            registerSection.input_first_name.set Factory::Dynamic.dynamic_data[:first_name]
            registerSection.input_last_name.set Factory::Dynamic.dynamic_data[:last_name]
            registerSection.input_password_register_form.set Factory::Dynamic.dynamic_data[:register_password]
            registerSection.input_first_name_register_form_adress.set Factory::Dynamic.dynamic_data[:first_name]
            registerSection.input_last_name_register_form_adress.set Factory::Dynamic.dynamic_data[:last_name]
            registerSection.input_register_address.set Factory::Dynamic.dynamic_data[:street_adress]
            registerSection.input_register_city.set Factory::Dynamic.dynamic_data[:city]
            registerSection.register_state[rand(1..50)].click
            registerSection.input_zip_code.set Factory::Dynamic.dynamic_data[:zip_code]
            registerSection.input_mobile_phone.set Factory::Dynamic.dynamic_data[:phone]
        end

        def checkoutLogin(set_email, set_password)
            loginSection.input_email.set set_email
            loginSection.input_password.set set_password
            loginSection.btn_login.click
        end

        def submit_register
            registerSection.btn_register_submit.click
        end
    end
end