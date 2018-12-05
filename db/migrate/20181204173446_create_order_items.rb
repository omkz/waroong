class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.decimal :unit_price, precision: 12, scale: 3
      t.integer :quantity
      t.decimal :total_price, precision: 12, scale: 3

      t.timestamps
    end
  end
end
