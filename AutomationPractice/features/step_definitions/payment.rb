Dado('que esteja na Página do Produto') do
    @pdp = Pages::ProductPage.new
    @pdp.load
  end
  
  Quando('adicionar o Produto ao Carrinho') do
    @pdp.btn_add_to_cart.click
    @pdp.wait_until_floatingCart_visible(wait: 10)
  end
  
  Quando('proceder ao Checkout') do
    @pdp.btn_floating_cart_checkout.click
    @pdp.btn_proceed_checkout.click
  end
  
  Quando('realizar ao Login') do
    @pdp.checkoutLogin(Factory::Static.static_data[:email], Factory::Static.static_data[:password])
  end
  
  Quando('confirmar o Endereço de Entrega e de Fatura') do
    @pdp.btn_confirm_order.click
  end
  
  Quando('escolher o método de Entrega') do
    @pdp.terms_of_service_checkbox.click
    @pdp.btn_proceed_checkout.click
  end
  
  Quando('selecionar a Forma de Pagamento por Cheque') do
    @pdp.payment_by_check.click
  end

  Quando('selecionar a Forma de Pagamento por Transferência Bancária') do
    @pdp.payment_by_bank_wire.click
  end
  
  Quando('confirmar o Pedido') do
    @pdp.btn_confirm_order.click
  end
  
  Então('o pedido com cheque deverá ser finalizado com Sucesso') do
    expect(@pdp.message_check_order_success.text).to have_content Factory::Static.static_data[:order_sucess_message]
  end

  Então('o pedido com Transferência Bancária deverá ser finalizado com Sucesso') do
    expect(@pdp.message_bank_wire_order_success.text).to have_content Factory::Static.static_data[:order_sucess_message]
  end