class OrdersController < ApplicationController
  
  
  # Usually there shoould be a #new, but as the first step of checkout is writing contact info, it's ok to just use #contact
  def contact
    @order = Order.new
  end

  def shipping_payment
  end

  def create
  end
end
