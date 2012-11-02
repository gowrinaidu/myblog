class BrandsController < InheritedResources::Base
	#layout "welcome"
	before_filter :authenticate_user!
	before_filter :custom_method, :only => [:new, :edit, :create, :destroy]
end
