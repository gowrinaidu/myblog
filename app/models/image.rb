class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :product
  has_attached_file :photo,  :styles => {:large=>"900x300#" ,:medium => "200x100", :thumb => "60x60#" }
  attr_protected
end
