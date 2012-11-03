class PagesController < ApplicationController
   before_filter :authenticate_user!	
  def index  	
  	if params[:products]
  		render :text=>params.inspect and return false
  	else
  		@pages = Product.all
  	end
  end

end
