class LineItemsController < ApplicationController
  
  include CurrentCart

  before_action :set_cart

  
  

  


  def create
    product = Product.find(params[:product_id])
    

    # Add new line item to cart by product then save
    # FIXME: In first iteration, user is redirect to cart and shown flash. Write JS to prevent default
    @line_item = @cart.line_items.build(
      product: product,
      cart_id: @cart.id,
      price: product.price
    )


    @line_item.save!

    # TODO: style the flash
    flash[:notice] = 'Added to cart'

    
    

    
  end

  def update
  end

  def destroy
  end
end
