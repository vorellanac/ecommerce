class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  # def new
  # 	@product = Product.new
  # end 

  def show
  	
  	# find([params:[id]])
  end

  # def create
  # 	render plain: params[:product].inspect
  # 	@product = Product.new params[:product]

  # 	if @product.save
  # 		redirect_to adsfasdf, notice: 'bien!'
  # 	else
  # 		redirect_to asdfasfd, notice: 'penita'
  # 	end
  # end

  

end
