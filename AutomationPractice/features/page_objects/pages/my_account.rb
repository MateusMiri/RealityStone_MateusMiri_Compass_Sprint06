module Pages
    class MyAccount < SitePrism::Page 
        set_url '/?controller=my-account'

        element :login_success_message, '.info-account'
        element :go_to_adresses_page, '[title="Addresses"]'

        element :btn_add_adress, '[title="Add an address"]'
    end
end