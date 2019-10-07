class ProductCategoriesController < ApplicationController
  def show
    @products = Product.includes(image_attachment: :blob).where(product_category: params[:id])
  end
end
