class CartsController < ApplicationController
    

    
    
    def index

        @line_items = LineItem.where(cart_id: @cart.id)

        @contact_info = ContactInfo.new

    end

    

    

    


    

    

    


end
