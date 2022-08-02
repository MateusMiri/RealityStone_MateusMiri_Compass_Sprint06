Dado('que esteja na página do Produto') do
    @pdp = Pages::ProductPage.new
    @pdp.load
  end
  
  Quando('alterar a cor do produto na PDP') do
    @product_image_before = @pdp.product_image['src'] 
    @pdp.colors(0)
  end
  
  Então('deverá trocar a imagem do produto apresentada') do
    expect(@pdp.product_image['src']).not_to eql @product_image_before
  end

  Quando('alterar o tamanho do produto na PDP') do
    @product_size_before = @pdp.selected_size
    @pdp.size_change(1)
  end
  
  Então('deverá exibir o tamanho do produto escolhido') do
    expect(@pdp.selected_size.text).to eql "M"
  end

  Quando('alterar a quantidade do produto na PDP') do
    @pdp.btn_increase_quantity.click
  end
  
  Quando('adicionar produto ao carrinho') do
    @pdp.btn_add_to_cart.click
    @pdp.wait_until_floatingCart_visible(wait: 5)
  end
  
  Então('o produto deverá ser adicionado ao carrinho com a quantidade selecionada') do
    expect(@pdp.floating_cart_product_quantity.text).to eql "2"
  end