class ProductsController < ApplicationController

    def show
        @product = Product.find_by(name: params[:name])
    end
end
