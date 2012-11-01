class ProductsController < ApplicationController
	def index		                            
          @products = Product.all                                      
	end
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(params[:product])
		if @product.save
			redirect_to products_path
		else
			render :action=>"new"
		end
	end
	def edit
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		if @Product.update_attributes(params[:product])
			redirect_to products_path
		else
			render :action=>"edit"
		end
	end
	def show
		@product = Product.find(params[:id])		
	end
end
