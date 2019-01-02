class LineItemsController < ApplicationController
  
  include CurrentCart

  before_action :set_cart
  

  
  

  


  def create
    product = Product.find(params[:product_id])
    

    # Add new line item to cart by product then save

    # Just add new line_item record when there's no existed one; else if a cart has a lproduct with existed record, just add its quantity

    

    if existed_line.count == 0
    
      @line_item = @cart.line_items.build(
        product: product,
        cart_id: @cart.id,
        price: product.price, 
        # It's ok to hardcode as the quantity defaults 1 when added to cart. It wouldn't be ok for other products like toilet paper.
        total: product.price * 1
      )
      @line_item.save!
    else
      @line_item = existed_line.update(quantity: 'quantity+1')

    end

    # TODO: implement inventory authentication

    
    
    
    

    redirect_back(fallback_location: collections_path) 
    flash[:notice] = 'Added to cart'

    
    

    
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

  def existed_line
    LineItem.where("cart_id = ? and product_id = ?", "@cart.id", "product.id")
  end
  




end
