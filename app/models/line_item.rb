class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  # TODO: After checkout, the line_items belonging to the cart should be destroyed.

  
end
