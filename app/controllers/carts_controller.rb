class CartsController < ApplicationController
	before_action :authenticate_user!
 
	def index
		@cart = Cart.all
		@orders = @cart.orders
  end

  def show
  	@cart = Cart.find(params[:id])
  	@orders = @cart.orders
  end

  def add
  end

end
