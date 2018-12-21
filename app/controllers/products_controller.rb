class ProductsController < ApplicationController

    def show
        @product = Product.find_by(product_name: params[:product_name])
    end
end
