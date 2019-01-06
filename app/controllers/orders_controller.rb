class OrdersController < ApplicationController
  include CurrentCart
    before_action :set_cart
  
  def  new
    @line_items = LineItem.where(cart_id: @cart.id)
  end
  

  def create
  end
end
