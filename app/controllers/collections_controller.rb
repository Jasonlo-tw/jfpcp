class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
    
  end

  def show
    @collection = Collection.find_by(collection_name: params[:collection_name])

    # temporary implement to show all products
    # @products = Product.all

    # Correct implementation
    # TODO: better 404 for collections?
    if params[:collection_name] == "all-products"
      @products = Product.all
    elsif
      @products = Product.find_by(collection_name: params[:collection_name])
    else
      render file: "/public/404", status: :not_found
    end
    
  end

  

  private




end
