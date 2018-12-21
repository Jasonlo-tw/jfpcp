class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
    
  end

  def show
    @collection = Collection.find_by(collection_name: params[:collection_name])

    # temporary implement to show all products
    @products = Product.all

    # TODO: correct implementation
    # if @collection == "All Products"
    #   @products = Product.all
    # else
    #   @products = 
    # end
    
  end

  

  private




end
