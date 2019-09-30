module Admin
  class ProductsController < Admin::ApplicationController

    def scoped_resource
      Product.includes(image_attachment: :blob)
    end

  end
end
