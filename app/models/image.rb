class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :product
  has_attached_file :photo,  :styles => { :medium=>"60x60#" },:whiny => false
  attr_protected
end
