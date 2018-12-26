class CartsController < ApplicationController
    include CurrentCart
    before_action :set_cart
    
    def index
        @line_items = LineItem.all

        

        
    end

    def show
        
        
    end

    def update

    end

    def destroy

    end


    private

    


end
