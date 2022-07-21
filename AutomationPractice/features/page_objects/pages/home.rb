require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page
        set_url 'http://automationpractice.com/index.php'

        section :header, Sections::Header, 'header'

        element :floatingPdp, '[class="pb-left-column col-xs-12 col-sm-4 col-md-5"]'
        elements :showcase_products, '[class="product-container"] [class="product-name"]'

        def search_for(product)
            header.search_input.click
            header.search_input.set product
            header.btn_search.click
        end

        def selectProduct(index)
            showcase_products[index].click
        end
    end
end

