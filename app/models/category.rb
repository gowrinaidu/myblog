class Category < ActiveRecord::Base
  attr_accessible :description,:name, :parent_id
  #attr_protected :lft, :rgt
  
  acts_as_nested_set
  #accepts_nested_attributes_for :brands, allow_destroy: true
  validates :name, :presence => true
  has_and_belongs_to_many :brands
  def self.nested_dropdown
    categories = self.order(:lft).collect {|row| ["#{'-- '*row.depth} #{row.name}",row.id]}
  end
 
end
