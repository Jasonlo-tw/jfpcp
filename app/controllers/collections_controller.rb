class CollectionsController < ApplicationController
  before_action :set_collection, only: :show
  # before_action :id_finder, only: :show
  
  
  def index
    @collections = Collection.all
    
  end

  def show
    # temporary implement to show all products
    # @products = Product.all


    # Correct implementation
    
    if @collection.collection_name == "All Products"
      @products = Product.all
    else
      
      # How to find products
      # 1. Find with :collection_name
      # 2. But :collection_name doesn't exist in Product
      # 3. Use :collection_id instead
      # 4. Where to infer :collection_id? From params[:collection_name]
      # 5. Set the @collection from the very beginning with titleized collection name

      
      @products = Product.where(collection_id: @collection.id)

    
    
    end

    
    
  end

  

  private


  
  def set_collection
    titleized_name = params[:collection_name].titleize
    @collection = Collection.find_by(collection_name: titleized_name)
  end

  




end
