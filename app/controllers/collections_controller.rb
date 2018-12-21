class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
    
  end

  def show
    @collection = Collection.find_by(collection_name: params[:collection_name])
    @products = Product.all
    
  end

  

  private




end
