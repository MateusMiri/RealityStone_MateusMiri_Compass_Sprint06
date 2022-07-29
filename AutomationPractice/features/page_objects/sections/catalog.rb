module Sections
    class Catalog < SitePrism::Section 

        element :catalogBlock, '[id="layered_block_left"]'
        elements :catalog_categories, '[id="ul_layered_category_0"] li' #3 elements
        elements :catalog_sizes, '[id="ul_layered_id_attribute_group_1"] li' #3 elements
        elements :catalog_colors, '[id="ul_layered_id_attribute_group_3"] li' #6 elements
        elements :catalog_compositions, '[id="ul_layered_id_feature_5"] li' #2 elements
        elements :catalog_styles, '[id="ul_layered_id_feature_6"] li' #2 elements
        elements :catalog_properties, '[id="ul_layered_id_feature_7"] li' #3 elements

    end
end