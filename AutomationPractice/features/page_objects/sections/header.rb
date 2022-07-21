module Sections
    class Header < SitePrism::Section

        element :search_input, '[id="search_query_top"]'
        element :btn_search, '[name="submit_search"]'
        element :btn_sign_in, '[class="login"]'
        
    end
end