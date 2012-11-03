class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  before_filter :mypage
  #before_filter :custom_method, :only => [:new, :edit, :create, :destroy]
  private
	def custom_method
	  authenticate_user!
	  if current_user.admin?
	     return
	  else
	     redirect_to root_url # or whatever
	  end
	end
	def mypage
		 @page_products =  Product.all 
  		 @page_categories = Category.all 	 
  		 @page_brands = Brand.all
  		 @page_brands_categories = BrandsCategory.all
	end
end
