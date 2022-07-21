require_relative '../sections/login.rb'

module Pages
    class Login < SitePrism::Page
        set_url '/?controller=authentication&back=my-account'
    
        ###
        #Register Elements
        element :input_email_for_register, '[name="email_create"]'
        element :btn_submit_email, '[id="SubmitCreate"]'

        #Register Form Elements
        element :registerForm, '[class="std box"]'
        element :btn_gender_f, '[id="id_gender2"]'
        element :input_first_name, '[id="customer_firstname"]'
        element :input_last_name, '[id="customer_lastname"]'
        element :input_email_register_form, '[id="email"]'
        element :input_password_register_form, '[id="passwd"]'
        element :input_first_name_register_form_adress, '[id="firstname"]'
        element :input_last_name_register_form_adress, '[id="lastname"]'
        element :input_register_address, '[id="address1"]'
        element :input_register_city, '[id="city"]'
        elements :register_state, '[name="id_state"] [value]'
        element :input_zip_code, '[id="postcode"]'
        element :input_mobile_phone, '[id="phone_mobile"]'
        element :btn_register_submit, '[id="submitAccount"]'

        ###

        section :loginSection, Sections::LoginSection, '[id="login_form"]'
        element :login_error_message, '[class="alert alert-danger"] li'
        
        def preencher_cadastro()
            input_first_name.set Factory::Dynamic.dynamic_data[:first_name]
            input_last_name.set Factory::Dynamic.dynamic_data[:last_name]
            input_password_register_form.set Factory::Dynamic.dynamic_data[:register_password]
            input_first_name_register_form_adress.set Factory::Dynamic.dynamic_data[:first_name]
            input_last_name_register_form_adress.set Factory::Dynamic.dynamic_data[:last_name]
            input_register_address.set Factory::Dynamic.dynamic_data[:street_adress]
            input_register_city.set Factory::Dynamic.dynamic_data[:city]
            register_state[rand(1..50)].click
            input_zip_code.set Factory::Dynamic.dynamic_data[:zip_code]
            input_mobile_phone.set Factory::Dynamic.dynamic_data[:phone]
        end

        def checkoutLogin(set_email, set_password)
            loginSection.input_email.set set_email
            loginSection.input_password.set set_password
            loginSection.btn_login.click
        end
    end
end