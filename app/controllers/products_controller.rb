class ProductsController < ApplicationController
	before_filter :authenticate_user!	
	before_filter :custom_method, :only => [:new, :edit, :create, :destroy]
	def index		                            
          @products = Product.all     
          render :layout=>"welcome"
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
		if @product.update_attributes(params[:product])
			redirect_to products_path
		else
			render :action=>"edit"
		end
	end
	def show
		@product = Product.find(params[:id])		
	end
	def destroy 
		@product = Product.find(params[:id])
    	@product.destroy
		redirect_to products_path
	end
end
