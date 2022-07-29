Dado('que o usuário esteja em uma Página de Categoria de Produtos') do
    @product_category_page = Pages::ProductCategory.new
    @product_category_page.load
  end
  
  Quando('o usuário selecionar as características do produto que deseja') do
    @product_category_page.select_categories
  end
  
  Então('deverão ser exibidos os resultados de busca') do
    expect(@product_category_page).to have_categoryPageProducts
  end