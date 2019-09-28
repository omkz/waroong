class AddCategoryReferenceToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :product_category, foreign_key: true
  end
end
