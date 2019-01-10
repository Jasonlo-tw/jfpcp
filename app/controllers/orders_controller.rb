class OrdersController < ApplicationController
  
  
  def  new
    @line_items = LineItem.where(cart_id: @cart.id)

    @contact_info = ContactInfo.find_by(cart_id: @cart.id)

    # FIXME: deliver the value to view first, need to attach it into DB
    @shipping = 30.00

    @order = Order.new
  end
  

  def create
    order_items = LineItem.where(cart_id: @cart.id)
    contact_info = ContactInfo.find_by(cart_id: @cart.id)
        
    total = order_items.sum(:total)
    shipping_fee = 30
    comments = comment_param[:comments]
    process = "Payment pending"

        

    #TODO: correct it as the devise account functionaity is finished
    account = contact_info.email

    

    @order = Order
            .new(total: total, 
                 shipping_fee: shipping_fee,
                 comments: comments,
                 process: process,
                 account: account, 
                 process: process)
            
    @order.save

    # Update the order_id from dummy one to real one
    order_items.update_all(order_id: @order.id)
    
    

                      
    # At the same time, remember to clear the cart
    @cart.destroy
    session[:cart_id] = nil

    

    redirect_to "/orders/order_complete.html.erb"
  end

  def order_complete
    render 'order_complete'
  end

  def order_check
    
  end

  def index
    

    @orders = Order.where("account = ?", params[:account])

    @line_items = LineItem.where("order_id = ?", !@orders.empty? ? @orders.first.id : nil)
  end

  def update
    order_id = params[:order_id]
    condition = params[:process]
    order = Order.find(order_id)


    if condition == "Order cancelled"
      order.update(process: condition)
      flash[:notice] = "Order cancelled."
    elsif condition == "Return processing"
      order.update(process: condition, return: 'Y')
      flash[:notice] = "Return processing."
    else
    end

    redirect_back(fallback_location: 'order_check')
    
  end


  private

    def comment_param
      params.require(:order).permit(:comments)
    end

    

    

    
end
