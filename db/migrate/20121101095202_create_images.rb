class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :product
      t.string :name
      t.attachment :photo    
      t.timestamps
    end
  end
end
