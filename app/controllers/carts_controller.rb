class CartsController < ApplicationController
    include CurrentCart
    before_action :set_cart

    
    
    def index

        @line_items = LineItem.where(cart_id: @cart.id)

        @contact_info = ContactInfo.new

    end

    

    

    


    

    

    


end
