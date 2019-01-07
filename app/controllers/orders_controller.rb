class OrdersController < ApplicationController
  include CurrentCart
    before_action :set_cart
  
  def  new
    @line_items = LineItem.where(cart_id: @cart.id)

    @contact_info = ContactInfo.find_by(cart_id: @cart.id)

    @shipping = "USD$30.00"
  end
  

  def create
  end
end
