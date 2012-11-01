class Product < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_protected

  validates :name, :presence => true  
  validates :category, :presence => true

  belongs_to :category
  belongs_to :user
  belongs_to :brand
  has_many :images

  accepts_nested_attributes_for :images

end
