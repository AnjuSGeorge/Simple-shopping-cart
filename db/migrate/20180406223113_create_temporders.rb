class CreateTemporders < ActiveRecord::Migration[5.1]
  def change
    create_table :temporders do |t|
      t.integer :User_id
      t.integer :Product_id
      t.decimal :Price
      t.integer :Quantity
      t.boolean :IsFinal
      t.string :Gen_id
      t.timestamps
    end
  end
end
