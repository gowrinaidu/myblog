class Category < ActiveRecord::Base
  attr_accessible :depth, :description,:name, :parent_id
  attr_protected :lft, :rgt
  
  #acts_as_nested_set
  
  validates :name, :presence => true
  
  def self.nested_dropdown
    categories = self.order(:lft).collect {|row| ["#{'-- '*row.depth} #{row.name}",row.id]}
  end
  
end
