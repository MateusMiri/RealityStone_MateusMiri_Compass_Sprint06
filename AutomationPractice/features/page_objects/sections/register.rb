module Sections
    class Register < SitePrism::Section 

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

    end
end