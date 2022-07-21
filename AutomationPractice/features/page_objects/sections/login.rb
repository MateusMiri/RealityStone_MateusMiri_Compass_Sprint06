module Sections
    class LoginSection < SitePrism::Section 

        element :input_email, '[class="form-group"] [id="email"]'
        element :input_password, '[class="form-group"] [id="passwd"]'
        element :btn_login, '[id="SubmitLogin"]'
        
    end
end