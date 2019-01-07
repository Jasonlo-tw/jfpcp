class OrdersController < ApplicationController
  include CurrentCart
    before_action :set_cart
  
  def  new
    @line_items = LineItem.where(cart_id: @cart.id)

    @contact_info = ContactInfo.find_by(cart_id: @cart.id)

    # FIXME: deliver the value to view first, need to attach it into DB
    @shipping = 30.00
  end
  

  def create
  end
end
