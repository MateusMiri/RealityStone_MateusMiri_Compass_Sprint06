Dado("que esteja na home") do
    @home_page = Pages::Home.new
    @home_page.load
  end

Então('deverão ser exibidos resultados de busca') do
  @search_results_page = Pages::SearchResults.new
  expect(@search_results_page).to have_products
end

Quando('realizar a busca pela Barra de busca por produtos {string}') do |product|
  @home_page.search_for(product)
end
