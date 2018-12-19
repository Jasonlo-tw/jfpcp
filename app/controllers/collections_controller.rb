class CollectionsController < ApplicationController
  
  # list all of the products on /collections
  def index
     @products = Product.all 
  end

  # as user clicks on each product (picture), he should be directed to product page, with the path being product.collection/product.title

  # def show
  # (?)
  # end
end
