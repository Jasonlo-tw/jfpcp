class LineItemsController < ApplicationController
  
 
 

  def create
    product = Product.find(params[:product_id])

    # Add a new line item to cart by product. 
    # There's two layers of actions here:
    # 1. controller initializes an instance of line_item for view to use
    # 2. model interacts with DB then saves operation
    @line_item = @cart.add_product(product, @cart.id, product.id)

    # For temporary relief or experimental implementation, we might let controller interact with DB like using save!. This method might be feasible when the logic is still simple simple (like simply adjusting quantity in line_items#update_quantity), however the behavior of whole app would be problematic and makes controller heavy. The correct way should be separating duties: only let model interact with DB then send data to controller, and controller prepares the data taken from model then send to view.
    

    # TODO: implement inventory authentication

    
    
    if @line_item.save
      redirect_back(fallback_location: collections_path) 
      flash[:notice] = 'Added to cart'
    else
      flash[:alert] = 'Error'
    end

    
    

    
  end

  def update_quantity
    # Define line_item id by params
    id = params[:id]
    
    # Define quantity by params; therefore understanding params is important...
    quantity = params[:line_item][:quantity]

    @change_item = LineItem.find(id)

    @change_item.update( 
      quantity: quantity, 
      total: @change_item.price * quantity.to_f
      )

    

  end

  def destroy
    id = params[:id]

    
    line_item = LineItem.find(id)

    line_item.destroy if line_item.cart_id = session[:cart_id]

    redirect_to carts_path

    flash[:notice] = "Item deleted."
  end

  private

  # def existed_line
  #   LineItem.where("cart_id = ? and product_id = ?", "@cart.id", "product.id")
  # end
  




end
