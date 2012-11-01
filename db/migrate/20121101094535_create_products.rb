class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      
      t.belongs_to :category
      t.belongs_to :user
      t.belongs_to :brand
      t.string :name       
      
      t.decimal :price , :precision => 7, :scale => 2
      t.boolean :active, :default => false
      
      t.text :features
      t.text :description

      t.timestamps
    end
  end
end
