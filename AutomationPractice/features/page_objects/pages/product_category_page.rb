require_relative '../sections/catalog'

module Pages
    class ProductCategory < SitePrism::Page 
        set_url 'http://automationpractice.com/index.php?id_category=8&controller=category'

        section :catalog, Sections::Catalog, '[id="layered_block_left"]'

        elements :categoryPageProducts, '[class="product_list grid row"]'

        def select_categories
            catalog.catalog_categories[2].click
            catalog.catalog_sizes[1].click
            catalog.catalog_colors[5].click
            catalog.catalog_compositions[0].click
        end

    end
end