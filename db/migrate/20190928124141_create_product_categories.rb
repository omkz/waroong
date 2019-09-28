class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps
    end
  end
end
