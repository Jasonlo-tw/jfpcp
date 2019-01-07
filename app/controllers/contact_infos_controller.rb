class ContactInfosController < ApplicationController
    include CurrentCart
    before_action :set_cart

    def  new
        @contact_info = ContactInfo.new

        @line_items = LineItem.where(cart_id: @cart.id)
    end

    def  create
        
        
        @contact_info = @cart.add_contact_info(contact_params)
        

        if ContactInfo.exists?(cart_id: @cart.id)
            redirect_to new_order_path
        else
            redirect_back(fallback_location: {action: "new"})
            flash[:alert] ="Please check your info"
        end


        
    end

    private

    def contact_params
        params.require(:contact_info).permit(:email, :first_name, :last_name, :address, :building_optional, :city, :country, :province, :post_code, :phone, :cart_id, :order_id)
    end
    
    
end
