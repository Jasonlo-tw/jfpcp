module CurrentCart
    extend ActiveSupport::Concern

    private

    def set_cart
        if session[:cart_id]
            @cart = Cart.find(session[:cart_id])
        else
            @cart = Cart.create!
            session[:cart_id] = @cart.id
        end
    end

    # This implementation generates many carts in database, but maybe it wouldn't be harmful or can be neglected?
    # TODO: what about deleting cart as user's session expires? But after a cart is deleted, would the newly generated cart use a previously generated (but with its cart deleted) id?

end