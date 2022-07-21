require_relative '../sections/login.rb'

module Pages
    class ProductPage < SitePrism::Page
        set_url 'http://automationpractice.com/index.php?id_product=5&controller=product&search_query=DRESSES&results=7#/size-s/color-yellow'

        element :btn_size, 'div.selector'
        elements :size_options, '#group_1 [value]' 
        element :selected_size, 'div .selector [style]'
        
        elements :color_options, '.attribute_list a'
        element :product_image, '[id="bigpic"]'

        element :btn_increase_quantity, '[class="btn btn-default button-plus product_quantity_up"]'
        element :btn_add_to_cart, '[id="add_to_cart"] [type="submit"]'

        element :floatingCart, '[class="layer_cart_product col-xs-12 col-md-6"]'
        element :btn_floating_cart_checkout, '[class="btn btn-default button button-medium"]'
        element :floating_cart_product_quantity, '[id="layer_cart_product_quantity"]'

        # Order Finalization Elements

        element :btn_proceed_checkout, '[class="button btn btn-default standard-checkout button-medium"]'
        element :btn_confirm_order, '[class="button btn btn-default button-medium"]'
        element :terms_of_service_checkbox, '[id="uniform-cgv"]'
        element :payment_by_check, '[class="cheque"]'
        element :payment_by_bank_wire, '[class="bankwire"]'
        element :message_check_order_success, '[class="alert alert-success"]'
        element :message_bank_wire_order_success, '[class="cheque-indent"]'

        section :loginSection, Sections::LoginSection, '[id="login_form"]'

        def size_change(index)
            btn_size.click
            size_options[index].click
        end

        def colors(index)
            color_options[index].click
        end

        def checkoutLogin(set_email, set_password)
            loginSection.input_email.set set_email
            loginSection.input_password.set set_password
            loginSection.btn_login.click
        end
    end
end