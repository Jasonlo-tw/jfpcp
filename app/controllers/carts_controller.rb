class CartsController < ApplicationController
    include CurrentCart
    before_action :set_cart

    
    
    def index

        @line_items = LineItem.where(cart_id: @cart.id)

        @contact_info = ContactInfo.new

    end

    

    

    # Usually there shoould be a #new, but as the first step of checkout is writing contact info, it's ok to just use #contact
    def contact_info
        
        @contact_info = ContactInfo.new



        
    end

    def contact_info_create
        
        @line_items = LineItem.where(cart_id: @cart.id)
        
        @contact_info = @cart.add_contact_info(contact_params, @cart.id)

        if @contact_info.save
            redirect_to 'shipping_payment'
        else
            redirect_back(fallback_location: {action: "contact_info"})
            flash[:alert] ="Please check your info"
        end



        
    end

    def shipping_payment
    end


    private

    def contact_params
        params.require(:contact_info).permit(:email, :first_name, :last_name, :address, :building_optional, :city, :country, :province, :post_code)
    end

    

    


end
