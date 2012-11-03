class Brand < ActiveRecord::Base
  #attr_accessible :description, :name, :logo  
  attr_protected
  has_attached_file :logo,  :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_and_belongs_to_many :categories
  # has_attached_file :logo, 
  # :styles => lambda{ |a| ["image/jpeg", "image/png","image/gif","image/pjpeg", "image/x-png","image/jpg"].include?( a.content_type ) ? { :thumb => "60x60#" } : {}  }
   # before_save do
   #   self.logo = self.logo.resize "60x60"
   # end
  
end
