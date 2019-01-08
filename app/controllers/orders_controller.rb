class OrdersController < ApplicationController
  include CurrentCart
    before_action :set_cart
  
  def  new
    @line_items = LineItem.where(cart_id: @cart.id)

    @contact_info = ContactInfo.find_by(cart_id: @cart.id)

    # FIXME: deliver the value to view first, need to attach it into DB
    @shipping = 30.00

    @order = Order.new
  end
  

  def create
    order_items = LineItem.where(cart_id: @cart.id)
    
    @total = order_items.sum(:total)
    @shipping = 30
    @comments = nil
    @process = "Payment pending"

    #TODO: put comments as the functionality is done
    @comments = nil | nil

    #TODO: correct it as the devise account functionaity is finished
    @account = nil | nil

    

    @order = Order.new(total: @total, 
                      shipping_fee: @shipping,
                      comments: @comments,
                      process: @process,
                      account: @account, 
                      process: "Payment pending")

                      
    @order.save

    order_items.update_all(order_id: @order.id)

    redirect_to "/orders/order_complete.html.erb"
  end

  def order_complete
    render 'order_complete'
  end
end
