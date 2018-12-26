class Cart < ApplicationRecord
    belongs_to :user

    # Cart is only a container for products to put in, like a notebook has many pages. Therefore cart itself cannot well present the content inside, we need to create another model LineItem to represent this relationship.
    has_many :line_items,dependent: :destroy

    
    
end
