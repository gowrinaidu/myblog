class AddAdminToUser < ActiveRecord::Migration
  def change
  	add_column :users , :admin, :boolean , :default => false
  	add_attachment :users, :avatar
  end
end
