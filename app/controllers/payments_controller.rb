class PaymentsController < ApplicationController
  def create
  	@cart = Cart.find params[:cart_id]
  	@cart.payment = Payment.new

  	if @cart.save
  		redirect_to products_path, notice: 'Pago realizado correctamente'
  	else
  		redirect_to cart_path(@cart), notice: 'Pago no efectuado'
  	end
  end

end
