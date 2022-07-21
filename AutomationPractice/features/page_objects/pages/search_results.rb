module Pages
    class SearchResults < SitePrism::Page
        set_url '/#/?controller=search&orderby=position&orderway=desc&search_query'

        elements :products, 'div.product-container'

    end
end