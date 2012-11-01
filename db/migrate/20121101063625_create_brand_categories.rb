class CreateBrandCategories < ActiveRecord::Migration
  def change
    create_table "brands_categories", :id => false, :force => true do |t|
    	t.integer "brand_id"
    	t.integer "category_id"      	
    end
  end
end
