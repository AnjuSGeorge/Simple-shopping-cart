class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :description
      t.decimal :price
      t.string :product_img
      t.integer :category_id
      t.timestamps
    end
  end
end
