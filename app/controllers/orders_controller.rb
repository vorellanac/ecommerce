class OrdersController < ApplicationController
  def create
  	product = Product.find params[:product_id]
  	order = Order.new(product: product)

  	cart = current_user.carts.last
  	cart.orders << order

  	if cart.save
  		redirect_to products_path, notice: '¡El producto fue agregado exitosamente a tú carro!.'
  	else
  		redirect_to products_path, notice: '¡Lo sentimos!, El Producto no fue agregado al carro.'
  	end
  end
end
