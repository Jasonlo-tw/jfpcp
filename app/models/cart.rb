class Cart < ApplicationRecord
    # This line may trigger user validation.
    # As non-users are allowed to checkout, what about skipping this relationship?
    # belongs_to :user

    # Cart is only a container for products to put in, like a notebook has many pages. Therefore cart itself cannot well present the content inside, we need to create another model LineItem to represent this relationship.
    has_many :line_items,dependent: :destroy
    
    
    has_one :contact_info

    def add_product(product, cart_id, product_id)
        current_item = line_items.find_by(product_id: product_id)

        # Add new line_item record when there's no existed one; else if a cart has a product with existed record, just add its quantity
        if !current_item
            current_item = line_items.build(
            product_id: product_id,
            cart_id: cart_id,
            price: product.price, 
            total: product.price * 1
            # It's ok to hardcode as the quantity defaults 1 when added to cart, which is just like the behaviors of Pinkoi customers (though they can adjust quantity when adding to cart... usually I would only buy one piece of each product).
            )
        else
            current_item.quantity += 1
        end
        current_item

    end

    def add_contact_info(param_info)
        # Ensure there's only one contact_info first
        new_contact = ContactInfo.find_by(cart_id: param_info[:cart_id])

        # If there's a contact_info with identical cart_id, update it, else build new
        if new_contact
            new_contact = new_contact.update(param_info)
        else
            new_contact = build_contact_info(param_info)
        end

        
        
        return new_contact

        

    end

    
    
end
