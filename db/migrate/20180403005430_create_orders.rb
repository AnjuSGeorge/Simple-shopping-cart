class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :total
      t.string  :Gen_id
      t.timestamps
    end
  end
end
