class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
    
  end

  def show
    @collection = Collection.find_by(name: params[:name])
    @products = Product.all
    
  end

  private




end
